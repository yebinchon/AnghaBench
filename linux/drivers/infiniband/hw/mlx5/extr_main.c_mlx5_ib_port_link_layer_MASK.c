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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_device {int dummy; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  port_type ; 
 struct mlx5_ib_dev* FUNC2 (struct ib_device*) ; 

__attribute__((used)) static enum rdma_link_layer
FUNC3(struct ib_device *device, u8 port_num)
{
	struct mlx5_ib_dev *dev = FUNC2(device);
	int port_type_cap = FUNC0(dev->mdev, port_type);

	return FUNC1(port_type_cap);
}