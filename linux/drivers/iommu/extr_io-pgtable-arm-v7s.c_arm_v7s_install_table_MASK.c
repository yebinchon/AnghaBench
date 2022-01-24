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
struct io_pgtable_cfg {int quirks; } ;
typedef  int arm_v7s_iopte ;

/* Variables and functions */
 int ARM_V7S_ATTR_NS_TABLE ; 
 int ARM_V7S_PTE_TYPE_TABLE ; 
 int IO_PGTABLE_QUIRK_ARM_NS ; 
 int /*<<< orphan*/  FUNC0 (int*,int,struct io_pgtable_cfg*) ; 
 int FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int*) ; 

__attribute__((used)) static arm_v7s_iopte FUNC4(arm_v7s_iopte *table,
					   arm_v7s_iopte *ptep,
					   arm_v7s_iopte curr,
					   struct io_pgtable_cfg *cfg)
{
	arm_v7s_iopte old, new;

	new = FUNC3(table) | ARM_V7S_PTE_TYPE_TABLE;
	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_NS)
		new |= ARM_V7S_ATTR_NS_TABLE;

	/*
	 * Ensure the table itself is visible before its PTE can be.
	 * Whilst we could get away with cmpxchg64_release below, this
	 * doesn't have any ordering semantics when !CONFIG_SMP.
	 */
	FUNC2();

	old = FUNC1(ptep, curr, new);
	FUNC0(ptep, 1, cfg);

	return old;
}