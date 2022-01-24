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
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_qp_cnt ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_ib_dev *dev)
{
	if (FUNC0(dev->mdev, max_qp_cnt))
		FUNC1(dev);
}