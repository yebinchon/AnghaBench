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
struct io_pgtable {int dummy; } ;
struct arm_v7s_io_pgtable {int /*<<< orphan*/  l2_tables; int /*<<< orphan*/ * pgd; } ;
typedef  int /*<<< orphan*/  arm_v7s_iopte ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,struct arm_v7s_io_pgtable*) ; 
 struct arm_v7s_io_pgtable* FUNC3 (struct io_pgtable*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC5 (struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct io_pgtable *iop)
{
	struct arm_v7s_io_pgtable *data = FUNC3(iop);
	int i;

	for (i = 0; i < FUNC0(1); i++) {
		arm_v7s_iopte pte = data->pgd[i];

		if (FUNC1(pte, 1))
			FUNC2(FUNC4(pte, 1, data),
					     2, data);
	}
	FUNC2(data->pgd, 1, data);
	FUNC6(data->l2_tables);
	FUNC5(data);
}