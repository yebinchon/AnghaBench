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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qib_verbs_counters {int /*<<< orphan*/  vl15_dropped; int /*<<< orphan*/  excessive_buffer_overrun_errors; int /*<<< orphan*/  local_link_integrity_errors; int /*<<< orphan*/  port_xmit_discards; int /*<<< orphan*/  port_rcv_remphys_errors; int /*<<< orphan*/  port_rcv_errors; int /*<<< orphan*/  link_downed_counter; int /*<<< orphan*/  link_error_recovery_counter; int /*<<< orphan*/  symbol_error_counter; int /*<<< orphan*/  port_rcv_packets; int /*<<< orphan*/  port_xmit_packets; int /*<<< orphan*/  port_rcv_data; int /*<<< orphan*/  port_xmit_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {TYPE_3__ rvp; } ;
struct TYPE_7__ {scalar_t__ counter; } ;
struct qib_pportdata {TYPE_4__ ibport_data; TYPE_2__ cong_stats; } ;
struct TYPE_10__ {scalar_t__ n_vl15_dropped; } ;
struct qib_ibport {int /*<<< orphan*/  z_vl15_dropped; TYPE_5__ rvp; int /*<<< orphan*/  z_excessive_buffer_overrun_errors; int /*<<< orphan*/  z_local_link_integrity_errors; int /*<<< orphan*/  z_port_xmit_discards; int /*<<< orphan*/  z_port_rcv_remphys_errors; int /*<<< orphan*/  z_port_rcv_errors; int /*<<< orphan*/  z_link_downed_counter; int /*<<< orphan*/  z_link_error_recovery_counter; int /*<<< orphan*/  z_symbol_error_counter; int /*<<< orphan*/  z_port_rcv_packets; int /*<<< orphan*/  z_port_xmit_packets; int /*<<< orphan*/  z_port_rcv_data; int /*<<< orphan*/  z_port_xmit_data; } ;
struct qib_devdata {int /*<<< orphan*/  (* f_set_cntr_sample ) (struct qib_pportdata*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  attr_mod; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int IB_PMA_SEL_CONG_ALL ; 
 int IB_PMA_SEL_CONG_PORT_DATA ; 
 int IB_PMA_SEL_CONG_XMIT ; 
 int /*<<< orphan*/  QIB_CONG_TIMER_PSINTERVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC1 (struct qib_pportdata*) ; 
 int FUNC2 (struct ib_pma_mad*,struct ib_device*,int /*<<< orphan*/ ) ; 
 struct qib_pportdata* FUNC3 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,struct qib_verbs_counters*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 struct qib_ibport* FUNC8 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ib_pma_mad *pmp,
				     struct ib_device *ibdev, u8 port)
{
	struct qib_ibport *ibp = FUNC8(ibdev, port);
	struct qib_pportdata *ppd = FUNC3(ibp);
	struct qib_devdata *dd = FUNC1(ppd);
	struct qib_verbs_counters cntrs;
	u32 counter_select = (FUNC0(pmp->mad_hdr.attr_mod) >> 24) & 0xFF;
	int ret = 0;
	unsigned long flags;

	FUNC4(ppd, &cntrs);
	/* Get counter values before we save them */
	ret = FUNC2(pmp, ibdev, port);

	if (counter_select & IB_PMA_SEL_CONG_XMIT) {
		FUNC5(&ppd->ibport_data.rvp.lock, flags);
		ppd->cong_stats.counter = 0;
		dd->f_set_cntr_sample(ppd, QIB_CONG_TIMER_PSINTERVAL,
				      0x0);
		FUNC6(&ppd->ibport_data.rvp.lock, flags);
	}
	if (counter_select & IB_PMA_SEL_CONG_PORT_DATA) {
		ibp->z_port_xmit_data = cntrs.port_xmit_data;
		ibp->z_port_rcv_data = cntrs.port_rcv_data;
		ibp->z_port_xmit_packets = cntrs.port_xmit_packets;
		ibp->z_port_rcv_packets = cntrs.port_rcv_packets;
	}
	if (counter_select & IB_PMA_SEL_CONG_ALL) {
		ibp->z_symbol_error_counter =
			cntrs.symbol_error_counter;
		ibp->z_link_error_recovery_counter =
			cntrs.link_error_recovery_counter;
		ibp->z_link_downed_counter =
			cntrs.link_downed_counter;
		ibp->z_port_rcv_errors = cntrs.port_rcv_errors;
		ibp->z_port_rcv_remphys_errors =
			cntrs.port_rcv_remphys_errors;
		ibp->z_port_xmit_discards =
			cntrs.port_xmit_discards;
		ibp->z_local_link_integrity_errors =
			cntrs.local_link_integrity_errors;
		ibp->z_excessive_buffer_overrun_errors =
			cntrs.excessive_buffer_overrun_errors;
		ibp->rvp.n_vl15_dropped = 0;
		ibp->z_vl15_dropped = cntrs.vl15_dropped;
	}

	return ret;
}