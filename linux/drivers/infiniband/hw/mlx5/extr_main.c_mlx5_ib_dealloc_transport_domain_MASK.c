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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ; 
 int /*<<< orphan*/  disable_local_lb_mc ; 
 int /*<<< orphan*/  disable_local_lb_uc ; 
 int /*<<< orphan*/  log_max_transport_domain ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,int,int) ; 
 int /*<<< orphan*/  port_type ; 

__attribute__((used)) static void FUNC3(struct mlx5_ib_dev *dev, u32 tdn,
					     u16 uid)
{
	if (!FUNC0(dev->mdev, log_max_transport_domain))
		return;

	FUNC1(dev->mdev, tdn, uid);

	if ((FUNC0(dev->mdev, port_type) != MLX5_CAP_PORT_TYPE_ETH) ||
	    (!FUNC0(dev->mdev, disable_local_lb_uc) &&
	     !FUNC0(dev->mdev, disable_local_lb_mc)))
		return;

	FUNC2(dev, true, false);
}