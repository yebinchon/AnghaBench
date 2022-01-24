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
struct atmel_i2c_cmd {int /*<<< orphan*/  rxsize; int /*<<< orphan*/  msecs; int /*<<< orphan*/  count; scalar_t__ param2; scalar_t__ param1; int /*<<< orphan*/  opcode; int /*<<< orphan*/  word_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  MAX_EXEC_TIME_RANDOM ; 
 int /*<<< orphan*/  OPCODE_RANDOM ; 
 int /*<<< orphan*/  RANDOM_COUNT ; 
 int /*<<< orphan*/  RANDOM_RSP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_i2c_cmd*) ; 

void FUNC1(struct atmel_i2c_cmd *cmd)
{
	cmd->word_addr = COMMAND;
	cmd->opcode = OPCODE_RANDOM;
	cmd->param1 = 0;
	cmd->param2 = 0;
	cmd->count = RANDOM_COUNT;

	FUNC0(cmd);

	cmd->msecs = MAX_EXEC_TIME_RANDOM;
	cmd->rxsize = RANDOM_RSP_SIZE;
}