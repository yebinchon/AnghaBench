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
struct rdma_netdev {int /*<<< orphan*/  (* free_rdma_netdev ) (struct net_device*) ;} ;
struct opa_vnic_adapter {int /*<<< orphan*/  mactbl_lock; int /*<<< orphan*/  lock; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opa_vnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rdma_netdev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(struct opa_vnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct rdma_netdev *rn = FUNC2(netdev);

	FUNC6("removing\n");
	FUNC5(netdev);
	FUNC3(adapter);
	FUNC1(&adapter->lock);
	FUNC1(&adapter->mactbl_lock);
	FUNC0(adapter);
	rn->free_rdma_netdev(netdev);
}