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
struct io_pgtable {int /*<<< orphan*/  cfg; } ;
struct arm_v7s_io_pgtable {struct io_pgtable iop; } ;
typedef  scalar_t__ arm_v7s_iopte ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int ARM_V7S_CONT_PAGES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct io_pgtable*,unsigned long,size_t,size_t) ; 

__attribute__((used)) static arm_v7s_iopte FUNC5(struct arm_v7s_io_pgtable *data,
					unsigned long iova, int idx, int lvl,
					arm_v7s_iopte *ptep)
{
	struct io_pgtable *iop = &data->iop;
	arm_v7s_iopte pte;
	size_t size = FUNC0(lvl);
	int i;

	/* Check that we didn't lose a race to get the lock */
	pte = *ptep;
	if (!FUNC3(pte, lvl))
		return pte;

	ptep -= idx & (ARM_V7S_CONT_PAGES - 1);
	pte = FUNC2(pte, lvl);
	for (i = 0; i < ARM_V7S_CONT_PAGES; i++)
		ptep[i] = pte + i * size;

	FUNC1(ptep, ARM_V7S_CONT_PAGES, &iop->cfg);

	size *= ARM_V7S_CONT_PAGES;
	FUNC4(iop, iova, size, size);
	return pte;
}