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
struct TYPE_2__ {int /*<<< orphan*/  cfg; int /*<<< orphan*/  fmt; } ;
struct arm_lpae_io_pgtable {unsigned long pgd_size; TYPE_1__ iop; } ;
typedef  int /*<<< orphan*/  arm_lpae_iopte ;

/* Variables and functions */
 unsigned long FUNC0 (struct arm_lpae_io_pgtable*) ; 
 int ARM_LPAE_MAX_LEVELS ; 
 int FUNC1 (struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct arm_lpae_io_pgtable*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct arm_lpae_io_pgtable *data, int lvl,
				    arm_lpae_iopte *ptep)
{
	arm_lpae_iopte *start, *end;
	unsigned long table_size;

	if (lvl == FUNC1(data))
		table_size = data->pgd_size;
	else
		table_size = FUNC0(data);

	start = ptep;

	/* Only leaf entries at the last level */
	if (lvl == ARM_LPAE_MAX_LEVELS - 1)
		end = ptep;
	else
		end = (void *)ptep + table_size;

	while (ptep != end) {
		arm_lpae_iopte pte = *ptep++;

		if (!pte || FUNC4(pte, lvl, data->iop.fmt))
			continue;

		FUNC5(data, lvl + 1, FUNC3(pte, data));
	}

	FUNC2(start, table_size, &data->iop.cfg);
}