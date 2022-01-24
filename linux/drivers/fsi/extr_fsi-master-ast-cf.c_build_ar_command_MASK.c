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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct fsi_msg {scalar_t__ msg; scalar_t__ bits; } ;
struct fsi_master_acf {int dummy; } ;

/* Variables and functions */
 int FSI_CMD_ABS_AR ; 
 int FSI_CMD_REL_AR ; 
 int FSI_CMD_SAME_AR ; 
 scalar_t__ FUNC0 (struct fsi_master_acf*,int,int,int*) ; 
 scalar_t__ FUNC1 (struct fsi_master_acf*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_msg*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_master_acf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fsi_master_acf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fsi_master_acf*) ; 

__attribute__((used)) static void FUNC8(struct fsi_master_acf *master,
			     struct fsi_msg *cmd, uint8_t id,
			     uint32_t addr, size_t size,
			     const void *data)
{
	int i, addr_bits, opcode_bits;
	bool write = !!data;
	uint8_t ds, opcode;
	uint32_t rel_addr;

	cmd->bits = 0;
	cmd->msg = 0;

	/* we have 21 bits of address max */
	addr &= ((1 << 21) - 1);

	/* cmd opcodes are variable length - SAME_AR is only two bits */
	opcode_bits = 3;

	if (FUNC1(master, id, addr)) {
		/* we still address the byte offset within the word */
		addr_bits = 2;
		opcode_bits = 2;
		opcode = FSI_CMD_SAME_AR;
		FUNC7(master);

	} else if (FUNC0(master, id, addr, &rel_addr)) {
		/* 8 bits plus sign */
		addr_bits = 9;
		addr = rel_addr;
		opcode = FSI_CMD_REL_AR;
		FUNC6(master, rel_addr);

	} else {
		addr_bits = 21;
		opcode = FSI_CMD_ABS_AR;
		FUNC5(master, addr);
	}

	/*
	 * The read/write size is encoded in the lower bits of the address
	 * (as it must be naturally-aligned), and the following ds bit.
	 *
	 *	size	addr:1	addr:0	ds
	 *	1	x	x	0
	 *	2	x	0	1
	 *	4	0	1	1
	 *
	 */
	ds = size > 1 ? 1 : 0;
	addr &= ~(size - 1);
	if (size == 4)
		addr |= 1;

	FUNC3(cmd, id, 2);
	FUNC3(cmd, opcode, opcode_bits);
	FUNC3(cmd, write ? 0 : 1, 1);
	FUNC3(cmd, addr, addr_bits);
	FUNC3(cmd, ds, 1);
	for (i = 0; write && i < size; i++)
		FUNC3(cmd, ((uint8_t *)data)[i], 8);

	FUNC4(cmd);
	FUNC2(cmd);
}