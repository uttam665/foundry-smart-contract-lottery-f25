// Layout of the contract file:
// version
// imports
// errors
// interfaces, libraries, contract
​
// Inside Contract:
// Type declarations
// State variables
// Events
// Modifiers
// Functions
​
// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;



/**
 * @title A smample Raffle contract
 * @author Uttam Kumar
 * @notice This contract is for creating a simple raffle system
 * @dev Implements Chainlink VRF v2.5
 */


contract Raffle {
    /**Error */
    error Raffle_SendMoreToEnterRaffle();

uint256 private immutable i_entranceFee;

constructor (uint256 entranceFee) {
    i_entranceFee = entranceFee;
}




    function enterRaffle() public payable {
        // require(msg.value >= i_entranceFee, "Send more to enter raffle");
        // require(msg.value >= i_entranceFee, SendMoreToEnterRaffle());

        if( msg.value < i_entranceFee) {
            revert Raffle_SendMoreToEnterRaffle();
        }



    }

    function pickWinner() public {}

    /**
     * Getter Functions
     */
    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }

|}