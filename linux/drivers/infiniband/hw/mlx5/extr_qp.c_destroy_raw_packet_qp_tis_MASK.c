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
struct mlx5_ib_sq {int /*<<< orphan*/  tisn; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct ib_pd*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_ib_dev *dev,
				      struct mlx5_ib_sq *sq, struct ib_pd *pd)
{
	FUNC0(dev->mdev, sq->tisn, FUNC1(pd)->uid);
}