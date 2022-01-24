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
struct mlx5_bfreg_info {int num_static_sys_pages; int num_sys_pages; int /*<<< orphan*/ * sys_pages; } ;
struct mlx5_ib_ucontext {struct mlx5_bfreg_info bfregi; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_IB_INVALID_UAR_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct mlx5_ib_dev *dev, struct mlx5_ib_ucontext *context)
{
	struct mlx5_bfreg_info *bfregi;
	int err;
	int i;

	bfregi = &context->bfregi;
	for (i = 0; i < bfregi->num_static_sys_pages; i++) {
		err = FUNC0(dev->mdev, &bfregi->sys_pages[i]);
		if (err)
			goto error;

		FUNC2(dev, "allocated uar %d\n", bfregi->sys_pages[i]);
	}

	for (i = bfregi->num_static_sys_pages; i < bfregi->num_sys_pages; i++)
		bfregi->sys_pages[i] = MLX5_IB_INVALID_UAR_INDEX;

	return 0;

error:
	for (--i; i >= 0; i--)
		if (FUNC1(dev->mdev, bfregi->sys_pages[i]))
			FUNC3(dev, "failed to free uar %d\n", i);

	return err;
}