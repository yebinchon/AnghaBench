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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  queue_mapping; } ;
struct opa_vnic_adapter {TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;

/* Variables and functions */
 scalar_t__ ETH_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct opa_vnic_adapter*,struct sk_buff*) ; 
 struct opa_vnic_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
					 struct net_device *netdev)
{
	struct opa_vnic_adapter *adapter = FUNC1(netdev);

	FUNC6("xmit: queue %d skb len %d\n", skb->queue_mapping, skb->len);
	/* pad to ensure mininum ethernet packet length */
	if (FUNC5(skb->len < ETH_ZLEN)) {
		if (FUNC2(skb, ETH_ZLEN))
			return NETDEV_TX_OK;

		FUNC3(skb, ETH_ZLEN - skb->len);
	}

	FUNC0(adapter, skb);
	return adapter->rn_ops->ndo_start_xmit(skb, netdev);
}