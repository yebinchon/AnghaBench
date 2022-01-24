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
struct mlx5_err_cqe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx5_err_cqe*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,char*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_ib_dev *dev, struct mlx5_err_cqe *cqe)
{
	FUNC1(dev, "dump error cqe\n");
	FUNC0(dev->mdev, cqe);
}