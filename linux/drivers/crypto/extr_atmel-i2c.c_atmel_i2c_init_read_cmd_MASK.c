#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct atmel_i2c_cmd {int /*<<< orphan*/  rxsize; int /*<<< orphan*/  msecs; int /*<<< orphan*/  count; int /*<<< orphan*/  param2; int /*<<< orphan*/  param1; int /*<<< orphan*/  opcode; int /*<<< orphan*/  word_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  CONFIG_ZONE ; 
 int /*<<< orphan*/  DEVICE_LOCK_ADDR ; 
 int /*<<< orphan*/  MAX_EXEC_TIME_READ ; 
 int /*<<< orphan*/  OPCODE_READ ; 
 int /*<<< orphan*/  READ_COUNT ; 
 int /*<<< orphan*/  READ_RSP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_i2c_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct atmel_i2c_cmd *cmd)
{
	cmd->word_addr = COMMAND;
	cmd->opcode = OPCODE_READ;
	/*
	 * Read the word from Configuration zone that contains the lock bytes
	 * (UserExtra, Selector, LockValue, LockConfig).
	 */
	cmd->param1 = CONFIG_ZONE;
	cmd->param2 = FUNC1(DEVICE_LOCK_ADDR);
	cmd->count = READ_COUNT;

	FUNC0(cmd);

	cmd->msecs = MAX_EXEC_TIME_READ;
	cmd->rxsize = READ_RSP_SIZE;
}