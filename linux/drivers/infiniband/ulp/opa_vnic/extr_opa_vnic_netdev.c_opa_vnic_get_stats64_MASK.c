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
typedef  int /*<<< orphan*/  vstats ;
struct rtnl_link_stats64 {int dummy; } ;
struct opa_vnic_stats {int /*<<< orphan*/  netstats; } ;
struct opa_vnic_adapter {int /*<<< orphan*/  stats_lock; TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_get_stats64 ) (struct net_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtnl_link_stats64*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_stats*,int /*<<< orphan*/ ,int) ; 
 struct opa_vnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev,
				 struct rtnl_link_stats64 *stats)
{
	struct opa_vnic_adapter *adapter = FUNC2(netdev);
	struct opa_vnic_stats vstats;

	FUNC1(&vstats, 0, sizeof(vstats));
	FUNC3(&adapter->stats_lock);
	adapter->rn_ops->ndo_get_stats64(netdev, &vstats.netstats);
	FUNC4(&adapter->stats_lock);
	FUNC0(stats, &vstats.netstats, sizeof(*stats));
}