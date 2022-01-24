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
struct rdma_ah_attr {int dummy; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  ib_dev; } ;
struct ib_global_route {int sgid_index; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 scalar_t__ FUNC0 (struct mlx4_ib_dev*,int,int) ; 
 struct ib_global_route* FUNC1 (struct rdma_ah_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct mlx4_ib_dev *dev, int slave, int port,
				    struct rdma_ah_attr *ah_attr)
{
	struct ib_global_route *grh = FUNC1(ah_attr);
	if (FUNC2(&dev->ib_dev, port) == IB_LINK_LAYER_INFINIBAND)
		grh->sgid_index = slave;
	else
		grh->sgid_index += FUNC0(dev, slave, port);
}