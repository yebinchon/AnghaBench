#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vstats ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_9__ {int /*<<< orphan*/  unicast; } ;
struct TYPE_10__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; } ;
struct opa_vnic_stats {TYPE_4__ tx_grp; TYPE_5__ netstats; } ;
struct TYPE_7__ {int /*<<< orphan*/  vesw_id; } ;
struct TYPE_8__ {TYPE_2__ vesw; } ;
struct opa_vnic_adapter {int /*<<< orphan*/  port_num; TYPE_3__ info; int /*<<< orphan*/  vport_num; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  netdev; TYPE_1__* rn_ops; } ;
struct opa_veswport_summary_counters {void** reserved; void* tx_unicast; void* rx_bytes; void* tx_bytes; void* rx_packets; void* tx_packets; void* rx_errors; void* tx_errors; int /*<<< orphan*/  veswport_num; void* vesw_id; void* vp_instance; } ;
typedef  void* __be64 ;
struct TYPE_6__ {int /*<<< orphan*/  (* ndo_get_stats64 ) (int /*<<< orphan*/ ,TYPE_5__*) ;} ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_stats*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 

void FUNC7(struct opa_vnic_adapter *adapter,
				   struct opa_veswport_summary_counters *cntrs)
{
	struct opa_vnic_stats vstats;
	__be64 *dst;
	u64 *src;

	FUNC3(&vstats, 0, sizeof(vstats));
	FUNC4(&adapter->stats_lock);
	adapter->rn_ops->ndo_get_stats64(adapter->netdev, &vstats.netstats);
	FUNC5(&adapter->stats_lock);

	cntrs->vp_instance = FUNC0(adapter->vport_num);
	cntrs->vesw_id = FUNC0(adapter->info.vesw.vesw_id);
	cntrs->veswport_num = FUNC1(adapter->port_num);

	cntrs->tx_errors = FUNC2(vstats.netstats.tx_errors);
	cntrs->rx_errors = FUNC2(vstats.netstats.rx_errors);
	cntrs->tx_packets = FUNC2(vstats.netstats.tx_packets);
	cntrs->rx_packets = FUNC2(vstats.netstats.rx_packets);
	cntrs->tx_bytes = FUNC2(vstats.netstats.tx_bytes);
	cntrs->rx_bytes = FUNC2(vstats.netstats.rx_bytes);

	/*
	 * This loop depends on layout of
	 * opa_veswport_summary_counters opa_vnic_stats structures.
	 */
	for (dst = &cntrs->tx_unicast, src = &vstats.tx_grp.unicast;
	     dst < &cntrs->reserved[0]; dst++, src++) {
		*dst = FUNC2(*src);
	}
}