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
typedef  unsigned long u32 ;
struct io_pgtable_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cfg; } ;
struct arm_v7s_io_pgtable {TYPE_1__ iop; int /*<<< orphan*/ * pgd; } ;
typedef  unsigned long phys_addr_t ;
typedef  int /*<<< orphan*/  arm_v7s_iopte ;

/* Variables and functions */
 unsigned long ARM_V7S_CONT_PAGES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct arm_v7s_io_pgtable* FUNC6 (struct io_pgtable_ops*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,struct arm_v7s_io_pgtable*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static phys_addr_t FUNC9(struct io_pgtable_ops *ops,
					unsigned long iova)
{
	struct arm_v7s_io_pgtable *data = FUNC6(ops);
	arm_v7s_iopte *ptep = data->pgd, pte;
	int lvl = 0;
	u32 mask;

	do {
		ptep += FUNC0(iova, ++lvl);
		pte = FUNC4(*ptep);
		ptep = FUNC7(pte, lvl, data);
	} while (FUNC2(pte, lvl));

	if (!FUNC3(pte))
		return 0;

	mask = FUNC1(lvl);
	if (FUNC5(pte, lvl))
		mask *= ARM_V7S_CONT_PAGES;
	return FUNC8(pte, lvl, &data->iop.cfg) | (iova & ~mask);
}