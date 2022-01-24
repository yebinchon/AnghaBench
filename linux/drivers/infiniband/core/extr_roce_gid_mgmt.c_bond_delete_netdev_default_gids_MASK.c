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
 int /*<<< orphan*/  IB_CACHE_GID_DEFAULT_MODE_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct net_device*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net_device*) ; 
 struct net_device* FUNC5 (struct net_device*) ; 
 unsigned long FUNC6 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ib_device *ib_dev,
					    u8 port,
					    struct net_device *rdma_ndev,
					    struct net_device *event_ndev)
{
	struct net_device *real_dev = FUNC5(event_ndev);
	unsigned long gid_type_mask;

	if (!rdma_ndev)
		return;

	if (!real_dev)
		real_dev = event_ndev;

	FUNC2();

	if (((rdma_ndev != event_ndev &&
	      !FUNC4(rdma_ndev, event_ndev)) ||
	     FUNC1(rdma_ndev, real_dev)
						 ==
	     BONDING_SLAVE_STATE_INACTIVE)) {
		FUNC3();
		return;
	}

	FUNC3();

	gid_type_mask = FUNC6(ib_dev, port);

	FUNC0(ib_dev, port, rdma_ndev,
				     gid_type_mask,
				     IB_CACHE_GID_DEFAULT_MODE_DELETE);
}