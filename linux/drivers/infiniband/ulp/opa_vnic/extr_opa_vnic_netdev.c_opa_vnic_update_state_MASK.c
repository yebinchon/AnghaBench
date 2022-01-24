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
struct TYPE_2__ {scalar_t__ config_state; int /*<<< orphan*/  eth_link_status; scalar_t__ oper_state; } ;
struct __opa_veswport_info {TYPE_1__ vport; } ;
struct opa_vnic_adapter {int /*<<< orphan*/  lock; int /*<<< orphan*/  netdev; struct __opa_veswport_info info; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPA_VNIC_ETH_LINK_DOWN ; 
 int /*<<< orphan*/  OPA_VNIC_ETH_LINK_UP ; 
 scalar_t__ OPA_VNIC_STATE_DROP_ALL ; 
 scalar_t__ OPA_VNIC_STATE_FORWARDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct opa_vnic_adapter *adapter, bool up)
{
	struct __opa_veswport_info *info = &adapter->info;

	FUNC0(&adapter->lock);
	/* Operational state can only be DROP_ALL or FORWARDING */
	if ((info->vport.config_state == OPA_VNIC_STATE_FORWARDING) && up) {
		info->vport.oper_state = OPA_VNIC_STATE_FORWARDING;
		info->vport.eth_link_status = OPA_VNIC_ETH_LINK_UP;
	} else {
		info->vport.oper_state = OPA_VNIC_STATE_DROP_ALL;
		info->vport.eth_link_status = OPA_VNIC_ETH_LINK_DOWN;
	}

	if (info->vport.config_state == OPA_VNIC_STATE_FORWARDING)
		FUNC2(adapter->netdev);
	else
		FUNC3(adapter->netdev);
	FUNC1(&adapter->lock);
}