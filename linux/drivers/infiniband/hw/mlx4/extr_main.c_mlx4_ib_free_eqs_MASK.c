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
struct TYPE_2__ {int num_comp_vectors; } ;
struct mlx4_ib_dev {int /*<<< orphan*/ * eq_table; TYPE_1__ ib_dev; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlx4_dev *dev, struct mlx4_ib_dev *ibdev)
{
	int i;
	int total_eqs = ibdev->ib_dev.num_comp_vectors;

	/* no eqs were allocated */
	if (!ibdev->eq_table)
		return;

	/* Reset the advertised EQ number */
	ibdev->ib_dev.num_comp_vectors = 0;

	for (i = 0; i < total_eqs; i++)
		FUNC1(dev, ibdev->eq_table[i]);

	FUNC0(ibdev->eq_table);
	ibdev->eq_table = NULL;
}