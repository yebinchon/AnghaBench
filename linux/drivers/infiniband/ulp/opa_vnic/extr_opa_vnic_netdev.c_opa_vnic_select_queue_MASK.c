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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct opa_vnic_skb_mdata {int /*<<< orphan*/  vl; int /*<<< orphan*/  entropy; } ;
struct opa_vnic_adapter {TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* ndo_select_queue ) (struct net_device*,struct sk_buff*,struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_adapter*,struct sk_buff*) ; 
 struct opa_vnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 struct opa_vnic_skb_mdata* FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct net_device*,struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static u16 FUNC6(struct net_device *netdev, struct sk_buff *skb,
				 struct net_device *sb_dev)
{
	struct opa_vnic_adapter *adapter = FUNC2(netdev);
	struct opa_vnic_skb_mdata *mdata;
	int rc;

	/* pass entropy and vl as metadata in skb */
	mdata = FUNC4(skb, sizeof(*mdata));
	mdata->entropy = FUNC0(skb);
	mdata->vl = FUNC1(adapter, skb);
	rc = adapter->rn_ops->ndo_select_queue(netdev, skb, sb_dev);
	FUNC3(skb, sizeof(*mdata));
	return rc;
}