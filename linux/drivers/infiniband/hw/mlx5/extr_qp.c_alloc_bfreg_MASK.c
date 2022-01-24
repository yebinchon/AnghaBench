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
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int ver; int /*<<< orphan*/  lock; int /*<<< orphan*/ * count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int NUM_NON_BLUE_FLAME_BFREGS ; 
 int FUNC1 (struct mlx5_ib_dev*,struct mlx5_bfreg_info*) ; 
 int FUNC2 (struct mlx5_ib_dev*,struct mlx5_bfreg_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlx5_ib_dev *dev,
		       struct mlx5_bfreg_info *bfregi)
{
	int bfregn = -ENOMEM;

	FUNC3(&bfregi->lock);
	if (bfregi->ver >= 2) {
		bfregn = FUNC1(dev, bfregi);
		if (bfregn < 0)
			bfregn = FUNC2(dev, bfregi);
	}

	if (bfregn < 0) {
		FUNC0(NUM_NON_BLUE_FLAME_BFREGS != 1);
		bfregn = 0;
		bfregi->count[bfregn]++;
	}
	FUNC4(&bfregi->lock);

	return bfregn;
}