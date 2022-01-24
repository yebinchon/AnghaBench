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
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ BONDING_SLAVE_STATE_INACTIVE ; 
 scalar_t__ FUNC0 (struct net_device*,struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool
FUNC4(struct ib_device *ib_dev, u8 port,
				  struct net_device *rdma_ndev, void *cookie)
{
	struct net_device *master_dev;
	bool res;

	if (!rdma_ndev)
		return false;

	FUNC2();
	master_dev = FUNC1(rdma_ndev);
	res = FUNC0(rdma_ndev, master_dev) ==
		BONDING_SLAVE_STATE_INACTIVE;
	FUNC3();

	return res;
}