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
struct mlx5_ib_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  mlx5_attr_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mlx5_ib_dev *dev)
{
	const char *name;

	FUNC2(&dev->ib_dev, &mlx5_attr_group);
	if (!FUNC1(dev->mdev))
		name = "mlx5_%d";
	else
		name = "mlx5_bond_%d";
	return FUNC0(&dev->ib_dev, name);
}