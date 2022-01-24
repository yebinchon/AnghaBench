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
struct mlx5_bfreg_info {int /*<<< orphan*/  count; int /*<<< orphan*/  sys_pages; } ;
struct mlx5_ib_ucontext {scalar_t__ devx_uid; int /*<<< orphan*/  tdn; struct mlx5_bfreg_info bfregi; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_ucontext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,scalar_t__) ; 
 struct mlx5_ib_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_ucontext* FUNC5 (struct ib_ucontext*) ; 

__attribute__((used)) static void FUNC6(struct ib_ucontext *ibcontext)
{
	struct mlx5_ib_ucontext *context = FUNC5(ibcontext);
	struct mlx5_ib_dev *dev = FUNC4(ibcontext->device);
	struct mlx5_bfreg_info *bfregi;

	bfregi = &context->bfregi;
	FUNC2(dev, context->tdn, context->devx_uid);

	if (context->devx_uid)
		FUNC3(dev, context->devx_uid);

	FUNC0(dev, context);
	FUNC1(bfregi->sys_pages);
	FUNC1(bfregi->count);
}