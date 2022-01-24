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
struct opa_vnic_adapter {int /*<<< orphan*/  netdev; TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* ndo_stop ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OPA_VESWPORT_TRAP_ETH_LINK_STATUS_CHANGE ; 
 struct opa_vnic_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct opa_vnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct opa_vnic_adapter *adapter = FUNC0(netdev);
	int rc;

	rc = adapter->rn_ops->ndo_stop(adapter->netdev);
	if (rc) {
		FUNC4("close failed %d\n", rc);
		return rc;
	}

	/* Update status and send trap */
	FUNC1(adapter, false);
	FUNC2(adapter,
				   OPA_VESWPORT_TRAP_ETH_LINK_STATUS_CHANGE);
	return 0;
}