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
struct io_pgtable_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fmt; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; int /*<<< orphan*/ * pgd; } ;
typedef  unsigned long phys_addr_t ;
typedef  int /*<<< orphan*/  arm_lpae_iopte ;

/* Variables and functions */
 int FUNC0 (int,struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,struct arm_lpae_io_pgtable*) ; 
 int ARM_LPAE_MAX_LEVELS ; 
 int FUNC2 (struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct arm_lpae_io_pgtable* FUNC4 (struct io_pgtable_ops*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,struct arm_lpae_io_pgtable*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,struct arm_lpae_io_pgtable*) ; 

__attribute__((used)) static phys_addr_t FUNC8(struct io_pgtable_ops *ops,
					 unsigned long iova)
{
	struct arm_lpae_io_pgtable *data = FUNC4(ops);
	arm_lpae_iopte pte, *ptep = data->pgd;
	int lvl = FUNC2(data);

	do {
		/* Valid IOPTE pointer? */
		if (!ptep)
			return 0;

		/* Grab the IOPTE we're interested in */
		ptep += FUNC1(iova, lvl, data);
		pte = FUNC3(*ptep);

		/* Valid entry? */
		if (!pte)
			return 0;

		/* Leaf entry? */
		if (FUNC6(pte, lvl, data->iop.fmt))
			goto found_translation;

		/* Take it to the next level */
		ptep = FUNC5(pte, data);
	} while (++lvl < ARM_LPAE_MAX_LEVELS);

	/* Ran out of page tables to walk */
	return 0;

found_translation:
	iova &= (FUNC0(lvl, data) - 1);
	return FUNC7(pte, data) | iova;
}