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
struct rdma_counter {int /*<<< orphan*/  id; int /*<<< orphan*/  device; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rdma_counter *counter)
{
	struct mlx5_ib_dev *dev = FUNC1(counter->device);

	return FUNC0(dev->mdev, counter->id);
}