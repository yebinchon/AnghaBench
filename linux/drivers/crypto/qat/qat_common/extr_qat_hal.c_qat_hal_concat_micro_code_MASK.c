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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * inst_4b ; 

__attribute__((used)) static int FUNC3(uint64_t *micro_inst,
				     unsigned int inst_num, unsigned int size,
				     unsigned int addr, unsigned int *value)
{
	int i;
	unsigned int cur_value;
	const uint64_t *inst_arr;
	int fixup_offset;
	int usize = 0;
	int orig_num;

	orig_num = inst_num;
	cur_value = value[0];
	inst_arr = inst_4b;
	usize = FUNC0(inst_4b);
	fixup_offset = inst_num;
	for (i = 0; i < usize; i++)
		micro_inst[inst_num++] = inst_arr[i];
	FUNC1(micro_inst[fixup_offset], (addr));
	fixup_offset++;
	FUNC1(micro_inst[fixup_offset], 0);
	fixup_offset++;
	FUNC2(micro_inst[fixup_offset], (cur_value >> 0));
	fixup_offset++;
	FUNC2(micro_inst[fixup_offset], (cur_value >> 0x10));

	return inst_num - orig_num;
}