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
struct mlx5_ib_pf_eq {int /*<<< orphan*/  pool; int /*<<< orphan*/  wq; int /*<<< orphan*/  work; int /*<<< orphan*/  core; int /*<<< orphan*/  irq_nb; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct mlx5_ib_dev *dev, struct mlx5_ib_pf_eq *eq)
{
	int err;

	FUNC4(dev->mdev, eq->core, &eq->irq_nb);
	err = FUNC3(dev->mdev, eq->core);
	FUNC0(&eq->work);
	FUNC1(eq->wq);
	FUNC2(eq->pool);

	return err;
}