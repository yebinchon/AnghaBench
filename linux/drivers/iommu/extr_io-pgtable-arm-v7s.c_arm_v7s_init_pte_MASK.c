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
 size_t FUNC0 (int) ; 
 scalar_t__* FUNC1 (unsigned long,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__,int,struct io_pgtable_cfg*) ; 
 size_t FUNC5 (struct arm_v7s_io_pgtable*,int /*<<< orphan*/ *,unsigned long,size_t,int,scalar_t__*) ; 
 scalar_t__ FUNC6 (int,int,struct io_pgtable_cfg*) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,struct io_pgtable_cfg*) ; 
 int /*<<< orphan*/  selftest_running ; 

__attribute__((used)) static int FUNC9(struct arm_v7s_io_pgtable *data,
			    unsigned long iova, phys_addr_t paddr, int prot,
			    int lvl, int num_entries, arm_v7s_iopte *ptep)
{
	struct io_pgtable_cfg *cfg = &data->iop.cfg;
	arm_v7s_iopte pte;
	int i;

	for (i = 0; i < num_entries; i++)
		if (FUNC2(ptep[i], lvl)) {
			/*
			 * We need to unmap and free the old table before
			 * overwriting it with a block entry.
			 */
			arm_v7s_iopte *tblp;
			size_t sz = FUNC0(lvl);

			tblp = ptep - FUNC1(iova, lvl);
			if (FUNC3(FUNC5(data, NULL, iova + i * sz,
						    sz, lvl, tblp) != sz))
				return -EINVAL;
		} else if (ptep[i]) {
			/* We require an unmap first */
			FUNC3(!selftest_running);
			return -EEXIST;
		}

	pte = FUNC6(prot, lvl, cfg);
	if (num_entries > 1)
		pte = FUNC7(pte, lvl);

	pte |= FUNC8(paddr, lvl, cfg);

	FUNC4(ptep, pte, num_entries, cfg);
	return 0;
}