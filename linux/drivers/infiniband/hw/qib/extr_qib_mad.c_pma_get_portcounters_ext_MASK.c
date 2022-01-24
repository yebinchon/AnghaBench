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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
struct qib_pportdata {int dummy; } ;
struct qib_pma_counters {scalar_t__ n_multicast_rcv; scalar_t__ n_multicast_xmit; scalar_t__ n_unicast_rcv; scalar_t__ n_unicast_xmit; } ;
struct qib_ibport {scalar_t__ z_multicast_rcv; scalar_t__ z_multicast_xmit; scalar_t__ z_unicast_rcv; scalar_t__ z_unicast_xmit; scalar_t__ z_port_rcv_packets; scalar_t__ z_port_xmit_packets; scalar_t__ z_port_rcv_data; scalar_t__ z_port_xmit_data; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portcounters_ext {scalar_t__ port_select; void* port_multicast_rcv_packets; void* port_multicast_xmit_packets; void* port_unicast_rcv_packets; void* port_unicast_xmit_packets; void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; } ;
struct TYPE_2__ {scalar_t__ attr_mod; int /*<<< orphan*/  status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC2 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_pportdata*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_ibport*,struct qib_pma_counters*) ; 
 int FUNC5 (struct ib_smp*) ; 
 struct qib_ibport* FUNC6 (struct ib_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct ib_pma_mad *pmp,
				    struct ib_device *ibdev, u8 port)
{
	struct ib_pma_portcounters_ext *p =
		(struct ib_pma_portcounters_ext *)pmp->data;
	struct qib_ibport *ibp = FUNC6(ibdev, port);
	struct qib_pportdata *ppd = FUNC2(ibp);
	u64 swords, rwords, spkts, rpkts, xwait;
	struct qib_pma_counters pma;
	u8 port_select = p->port_select;

	FUNC1(pmp->data, 0, sizeof(pmp->data));

	p->port_select = port_select;
	if (pmp->mad_hdr.attr_mod != 0 || port_select != port) {
		pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
		goto bail;
	}

	FUNC3(ppd, &swords, &rwords, &spkts, &rpkts, &xwait);

	/* Adjust counters for any resets done. */
	swords -= ibp->z_port_xmit_data;
	rwords -= ibp->z_port_rcv_data;
	spkts -= ibp->z_port_xmit_packets;
	rpkts -= ibp->z_port_rcv_packets;

	p->port_xmit_data = FUNC0(swords);
	p->port_rcv_data = FUNC0(rwords);
	p->port_xmit_packets = FUNC0(spkts);
	p->port_rcv_packets = FUNC0(rpkts);

	FUNC4(ibp, &pma);

	p->port_unicast_xmit_packets = FUNC0(pma.n_unicast_xmit
		- ibp->z_unicast_xmit);
	p->port_unicast_rcv_packets = FUNC0(pma.n_unicast_rcv
		- ibp->z_unicast_rcv);
	p->port_multicast_xmit_packets = FUNC0(pma.n_multicast_xmit
		- ibp->z_multicast_xmit);
	p->port_multicast_rcv_packets = FUNC0(pma.n_multicast_rcv
		- ibp->z_multicast_rcv);

bail:
	return FUNC5((struct ib_smp *) pmp);
}