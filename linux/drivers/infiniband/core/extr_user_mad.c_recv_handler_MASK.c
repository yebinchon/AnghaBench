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
struct rdma_ah_attr {int dummy; } ;
struct TYPE_6__ {int grh_present; void* flow_label; int /*<<< orphan*/  gid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  gid_index; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  path_bits; int /*<<< orphan*/  sl; void* lid; void* qpn; scalar_t__ length; scalar_t__ status; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
struct ib_umad_packet {TYPE_3__ mad; struct ib_mad_recv_wc* recv_wc; scalar_t__ length; } ;
struct ib_umad_file {int dummy; } ;
struct ib_mad_send_buf {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  grh; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; TYPE_4__* wc; scalar_t__ mad_len; } ;
struct ib_mad_agent {int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; struct ib_umad_file* context; } ;
struct ib_global_route {int /*<<< orphan*/  flow_label; int /*<<< orphan*/  dgid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; } ;
struct TYPE_8__ {scalar_t__ status; int slid; int wc_flags; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  dlid_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  src_qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_WC_GRH ; 
 scalar_t__ IB_WC_SUCCESS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_umad_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_recv_wc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,struct rdma_ah_attr*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_umad_packet*) ; 
 struct ib_umad_packet* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (struct ib_umad_file*,struct ib_mad_agent*,struct ib_umad_packet*) ; 
 struct ib_global_route* FUNC9 (struct rdma_ah_attr*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_ah_attr*) ; 

__attribute__((used)) static void FUNC12(struct ib_mad_agent *agent,
			 struct ib_mad_send_buf *send_buf,
			 struct ib_mad_recv_wc *mad_recv_wc)
{
	struct ib_umad_file *file = agent->context;
	struct ib_umad_packet *packet;

	if (mad_recv_wc->wc->status != IB_WC_SUCCESS)
		goto err1;

	packet = FUNC6(sizeof *packet, GFP_KERNEL);
	if (!packet)
		goto err1;

	packet->length = mad_recv_wc->mad_len;
	packet->recv_wc = mad_recv_wc;

	packet->mad.hdr.status	   = 0;
	packet->mad.hdr.length	   = FUNC1(file) + mad_recv_wc->mad_len;
	packet->mad.hdr.qpn	   = FUNC0(mad_recv_wc->wc->src_qp);
	/*
	 * On OPA devices it is okay to lose the upper 16 bits of LID as this
	 * information is obtained elsewhere. Mask off the upper 16 bits.
	 */
	if (FUNC10(agent->device, agent->port_num))
		packet->mad.hdr.lid = FUNC4(0xFFFF &
						  mad_recv_wc->wc->slid);
	else
		packet->mad.hdr.lid = FUNC4(mad_recv_wc->wc->slid);
	packet->mad.hdr.sl	   = mad_recv_wc->wc->sl;
	packet->mad.hdr.path_bits  = mad_recv_wc->wc->dlid_path_bits;
	packet->mad.hdr.pkey_index = mad_recv_wc->wc->pkey_index;
	packet->mad.hdr.grh_present = !!(mad_recv_wc->wc->wc_flags & IB_WC_GRH);
	if (packet->mad.hdr.grh_present) {
		struct rdma_ah_attr ah_attr;
		const struct ib_global_route *grh;
		int ret;

		ret = FUNC3(agent->device, agent->port_num,
					      mad_recv_wc->wc,
					      mad_recv_wc->recv_buf.grh,
					      &ah_attr);
		if (ret)
			goto err2;

		grh = FUNC9(&ah_attr);
		packet->mad.hdr.gid_index = grh->sgid_index;
		packet->mad.hdr.hop_limit = grh->hop_limit;
		packet->mad.hdr.traffic_class = grh->traffic_class;
		FUNC7(packet->mad.hdr.gid, &grh->dgid, 16);
		packet->mad.hdr.flow_label = FUNC0(grh->flow_label);
		FUNC11(&ah_attr);
	}

	if (FUNC8(file, agent, packet))
		goto err2;
	return;

err2:
	FUNC5(packet);
err1:
	FUNC2(mad_recv_wc);
}