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
typedef  unsigned int uint32_t ;
struct fsi_msg {int msg; unsigned int bits; } ;
struct fsi_master_acf {scalar_t__ sram; } ;

/* Variables and functions */
 unsigned int CMD_COMMAND ; 
 scalar_t__ CMD_DATA ; 
 unsigned int CMD_REG_CLEN_SHIFT ; 
 unsigned int CMD_REG_RLEN_SHIFT ; 
 int FUNC0 (struct fsi_master_acf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_acf*,struct fsi_msg*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct fsi_master_acf *master, struct fsi_msg *cmd,
			unsigned int resp_bits)
{
	uint32_t op;

	FUNC2(master, cmd, resp_bits);

	/* Store message into SRAM */
	FUNC1((cmd->msg >> 32), master->sram + CMD_DATA);
	FUNC1((cmd->msg & 0xffffffff), master->sram + CMD_DATA + 4);

	op = CMD_COMMAND;
	op |= cmd->bits << CMD_REG_CLEN_SHIFT;
	if (resp_bits)
		op |= resp_bits << CMD_REG_RLEN_SHIFT;

	return FUNC0(master, op);
}