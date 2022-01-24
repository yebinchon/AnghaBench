#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  uc_macs_gen_count; } ;
struct TYPE_4__ {TYPE_1__ vport; } ;
struct opa_vnic_adapter {TYPE_2__ info; int /*<<< orphan*/  lock; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  OPA_VESWPORT_TRAP_IFACE_UCAST_MAC_CHANGE ; 
 int FUNC0 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct opa_vnic_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct opa_vnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, void *addr)
{
	struct opa_vnic_adapter *adapter = FUNC4(netdev);
	struct sockaddr *sa = addr;
	int rc;

	if (!FUNC1(netdev->dev_addr, sa->sa_data, ETH_ALEN))
		return 0;

	FUNC2(&adapter->lock);
	rc = FUNC0(netdev, addr);
	FUNC3(&adapter->lock);
	if (rc)
		return rc;

	adapter->info.vport.uc_macs_gen_count++;
	FUNC5(adapter,
				   OPA_VESWPORT_TRAP_IFACE_UCAST_MAC_CHANGE);
	return 0;
}