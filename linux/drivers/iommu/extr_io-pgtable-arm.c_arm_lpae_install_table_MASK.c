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
struct io_pgtable_cfg {int quirks; scalar_t__ coherent_walk; } ;
typedef  int arm_lpae_iopte ;

/* Variables and functions */
 int ARM_LPAE_PTE_NSTABLE ; 
 int ARM_LPAE_PTE_SW_SYNC ; 
 int ARM_LPAE_PTE_TYPE_TABLE ; 
 int IO_PGTABLE_QUIRK_ARM_NS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct io_pgtable_cfg*) ; 
 int FUNC2 (int*) ; 
 int FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static arm_lpae_iopte FUNC5(arm_lpae_iopte *table,
					     arm_lpae_iopte *ptep,
					     arm_lpae_iopte curr,
					     struct io_pgtable_cfg *cfg)
{
	arm_lpae_iopte old, new;

	new = FUNC2(table) | ARM_LPAE_PTE_TYPE_TABLE;
	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_NS)
		new |= ARM_LPAE_PTE_NSTABLE;

	/*
	 * Ensure the table itself is visible before its PTE can be.
	 * Whilst we could get away with cmpxchg64_release below, this
	 * doesn't have any ordering semantics when !CONFIG_SMP.
	 */
	FUNC4();

	old = FUNC3(ptep, curr, new);

	if (cfg->coherent_walk || (old & ARM_LPAE_PTE_SW_SYNC))
		return old;

	/* Even if it's not ours, there's no point waiting; just kick it */
	FUNC1(ptep, cfg);
	if (old == curr)
		FUNC0(*ptep, new | ARM_LPAE_PTE_SW_SYNC);

	return old;
}