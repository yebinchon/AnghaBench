#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct qib_verbs_counters {int symbol_error_counter; int link_error_recovery_counter; int link_downed_counter; int port_rcv_errors; int port_rcv_remphys_errors; int port_xmit_discards; int local_link_integrity_errors; int excessive_buffer_overrun_errors; int vl15_dropped; scalar_t__ port_rcv_packets; scalar_t__ port_xmit_packets; scalar_t__ port_rcv_data; scalar_t__ port_xmit_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {TYPE_2__ rvp; } ;
struct qib_pportdata {TYPE_3__ ibport_data; } ;
struct TYPE_8__ {scalar_t__ n_vl15_dropped; } ;
struct qib_ibport {scalar_t__ z_port_rcv_packets; scalar_t__ z_port_xmit_packets; scalar_t__ z_port_rcv_data; scalar_t__ z_port_xmit_data; TYPE_4__ rvp; scalar_t__ z_vl15_dropped; scalar_t__ z_excessive_buffer_overrun_errors; scalar_t__ z_local_link_integrity_errors; scalar_t__ z_port_xmit_discards; scalar_t__ z_port_rcv_remphys_errors; scalar_t__ z_port_rcv_errors; scalar_t__ z_link_downed_counter; scalar_t__ z_link_error_recovery_counter; scalar_t__ z_symbol_error_counter; } ;
struct qib_devdata {int psxmitwait_check_rate; int /*<<< orphan*/  psxmitwait_supported; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portcounters_cong {int link_error_recovery_counter; int link_downed_counter; int link_overrun_errors; void* vl15_dropped; void* port_xmit_discards; void* port_rcv_remphys_errors; void* port_rcv_errors; void* symbol_error_counter; void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; void* port_xmit_wait; void* port_adr_events; void* port_check_rate; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  attr_mod; } ;
struct ib_pma_mad {scalar_t__ data; scalar_t__ reserved; TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  IB_SMP_UNSUP_METH_ATTR ; 
 int QIB_XMIT_RATE_PICO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (scalar_t__) ; 
 struct qib_devdata* FUNC3 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC5 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,struct qib_verbs_counters*) ; 
 int FUNC7 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qib_ibport* FUNC10 (struct ib_device*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct qib_pportdata*) ; 

__attribute__((used)) static int FUNC12(struct ib_pma_mad *pmp,
				     struct ib_device *ibdev, u8 port)
{
	/* Congestion PMA packets start at offset 24 not 64 */
	struct ib_pma_portcounters_cong *p =
		(struct ib_pma_portcounters_cong *)pmp->reserved;
	struct qib_verbs_counters cntrs;
	struct qib_ibport *ibp = FUNC10(ibdev, port);
	struct qib_pportdata *ppd = FUNC5(ibp);
	struct qib_devdata *dd = FUNC3(ppd);
	u32 port_select = FUNC0(pmp->mad_hdr.attr_mod) & 0xFF;
	u64 xmit_wait_counter;
	unsigned long flags;

	/*
	 * This check is performed only in the GET method because the
	 * SET method ends up calling this anyway.
	 */
	if (!dd->psxmitwait_supported)
		pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
	if (port_select != port)
		pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;

	FUNC6(ppd, &cntrs);
	FUNC8(&ppd->ibport_data.rvp.lock, flags);
	xmit_wait_counter = FUNC11(ppd);
	FUNC9(&ppd->ibport_data.rvp.lock, flags);

	/* Adjust counters for any resets done. */
	cntrs.symbol_error_counter -= ibp->z_symbol_error_counter;
	cntrs.link_error_recovery_counter -=
		ibp->z_link_error_recovery_counter;
	cntrs.link_downed_counter -= ibp->z_link_downed_counter;
	cntrs.port_rcv_errors -= ibp->z_port_rcv_errors;
	cntrs.port_rcv_remphys_errors -=
		ibp->z_port_rcv_remphys_errors;
	cntrs.port_xmit_discards -= ibp->z_port_xmit_discards;
	cntrs.local_link_integrity_errors -=
		ibp->z_local_link_integrity_errors;
	cntrs.excessive_buffer_overrun_errors -=
		ibp->z_excessive_buffer_overrun_errors;
	cntrs.vl15_dropped -= ibp->z_vl15_dropped;
	cntrs.vl15_dropped += ibp->rvp.n_vl15_dropped;
	cntrs.port_xmit_data -= ibp->z_port_xmit_data;
	cntrs.port_rcv_data -= ibp->z_port_rcv_data;
	cntrs.port_xmit_packets -= ibp->z_port_xmit_packets;
	cntrs.port_rcv_packets -= ibp->z_port_rcv_packets;

	FUNC4(pmp->reserved, 0, sizeof(pmp->reserved));
	FUNC4(pmp->data, 0, sizeof(pmp->data));

	/*
	 * Set top 3 bits to indicate interval in picoseconds in
	 * remaining bits.
	 */
	p->port_check_rate =
		FUNC1((QIB_XMIT_RATE_PICO << 13) |
			    (dd->psxmitwait_check_rate &
			     ~(QIB_XMIT_RATE_PICO << 13)));
	p->port_adr_events = FUNC2(0);
	p->port_xmit_wait = FUNC2(xmit_wait_counter);
	p->port_xmit_data = FUNC2(cntrs.port_xmit_data);
	p->port_rcv_data = FUNC2(cntrs.port_rcv_data);
	p->port_xmit_packets =
		FUNC2(cntrs.port_xmit_packets);
	p->port_rcv_packets =
		FUNC2(cntrs.port_rcv_packets);
	if (cntrs.symbol_error_counter > 0xFFFFUL)
		p->symbol_error_counter = FUNC1(0xFFFF);
	else
		p->symbol_error_counter =
			FUNC1(
				(u16)cntrs.symbol_error_counter);
	if (cntrs.link_error_recovery_counter > 0xFFUL)
		p->link_error_recovery_counter = 0xFF;
	else
		p->link_error_recovery_counter =
			(u8)cntrs.link_error_recovery_counter;
	if (cntrs.link_downed_counter > 0xFFUL)
		p->link_downed_counter = 0xFF;
	else
		p->link_downed_counter =
			(u8)cntrs.link_downed_counter;
	if (cntrs.port_rcv_errors > 0xFFFFUL)
		p->port_rcv_errors = FUNC1(0xFFFF);
	else
		p->port_rcv_errors =
			FUNC1((u16) cntrs.port_rcv_errors);
	if (cntrs.port_rcv_remphys_errors > 0xFFFFUL)
		p->port_rcv_remphys_errors = FUNC1(0xFFFF);
	else
		p->port_rcv_remphys_errors =
			FUNC1(
				(u16)cntrs.port_rcv_remphys_errors);
	if (cntrs.port_xmit_discards > 0xFFFFUL)
		p->port_xmit_discards = FUNC1(0xFFFF);
	else
		p->port_xmit_discards =
			FUNC1((u16)cntrs.port_xmit_discards);
	if (cntrs.local_link_integrity_errors > 0xFUL)
		cntrs.local_link_integrity_errors = 0xFUL;
	if (cntrs.excessive_buffer_overrun_errors > 0xFUL)
		cntrs.excessive_buffer_overrun_errors = 0xFUL;
	p->link_overrun_errors = (cntrs.local_link_integrity_errors << 4) |
		cntrs.excessive_buffer_overrun_errors;
	if (cntrs.vl15_dropped > 0xFFFFUL)
		p->vl15_dropped = FUNC1(0xFFFF);
	else
		p->vl15_dropped = FUNC1((u16)cntrs.vl15_dropped);

	return FUNC7((struct ib_smp *)pmp);
}