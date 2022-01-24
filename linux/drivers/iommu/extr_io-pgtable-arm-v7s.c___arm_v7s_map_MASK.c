#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct io_pgtable_cfg {int dummy; } ;
struct TYPE_2__ {struct io_pgtable_cfg cfg; } ;
struct arm_v7s_io_pgtable {TYPE_1__ iop; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  scalar_t__ arm_v7s_iopte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__* FUNC5 (int,int /*<<< orphan*/ ,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int,struct io_pgtable_cfg*) ; 
 int FUNC8 (struct arm_v7s_io_pgtable*,unsigned long,int /*<<< orphan*/ ,int,int,int,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,struct io_pgtable_cfg*) ; 
 scalar_t__* FUNC10 (scalar_t__,int,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  selftest_running ; 

__attribute__((used)) static int FUNC11(struct arm_v7s_io_pgtable *data, unsigned long iova,
			 phys_addr_t paddr, size_t size, int prot,
			 int lvl, arm_v7s_iopte *ptep)
{
	struct io_pgtable_cfg *cfg = &data->iop.cfg;
	arm_v7s_iopte pte, *cptep;
	int num_entries = size >> FUNC1(lvl);

	/* Find our entry at the current level */
	ptep += FUNC0(iova, lvl);

	/* If we can install a leaf entry at this level, then do so */
	if (num_entries)
		return FUNC8(data, iova, paddr, prot,
					lvl, num_entries, ptep);

	/* We can't allocate tables at the final level */
	if (FUNC4(lvl == 2))
		return -EINVAL;

	/* Grab a pointer to the next level */
	pte = FUNC3(*ptep);
	if (!pte) {
		cptep = FUNC5(lvl + 1, GFP_ATOMIC, data);
		if (!cptep)
			return -ENOMEM;

		pte = FUNC9(cptep, ptep, 0, cfg);
		if (pte)
			FUNC6(cptep, lvl + 1, data);
	} else {
		/* We've no easy way of knowing if it's synced yet, so... */
		FUNC7(ptep, 1, cfg);
	}

	if (FUNC2(pte, lvl)) {
		cptep = FUNC10(pte, lvl, data);
	} else if (pte) {
		/* We require an unmap first */
		FUNC4(!selftest_running);
		return -EEXIST;
	}

	/* Rinse, repeat */
	return FUNC11(data, iova, paddr, size, prot, lvl + 1, cptep);
}