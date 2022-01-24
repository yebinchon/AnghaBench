#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct opa_vnic_vema_port {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {scalar_t__ status; int /*<<< orphan*/  method; } ;
struct opa_vnic_vema_mad {TYPE_4__ mad_hdr; } ;
struct ib_mad_send_buf {struct opa_vnic_vema_mad* mad; struct ib_mad_send_buf* ah; } ;
struct TYPE_9__ {TYPE_5__* mad; int /*<<< orphan*/  grh; } ;
struct ib_mad_recv_wc {TYPE_3__ recv_buf; TYPE_6__* wc; } ;
struct ib_mad_agent {int /*<<< orphan*/  port_num; TYPE_1__* qp; struct opa_vnic_vema_port* context; } ;
struct ib_ah {struct opa_vnic_vema_mad* mad; struct ib_ah* ah; } ;
struct TYPE_12__ {int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  src_qp; } ;
struct TYPE_8__ {int method; } ;
struct TYPE_11__ {TYPE_2__ mad_hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IB_MGMT_METHOD_GET 129 
 int /*<<< orphan*/  IB_MGMT_METHOD_GET_RESP ; 
#define  IB_MGMT_METHOD_SET 128 
 int /*<<< orphan*/  IB_MGMT_VENDOR_HDR ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  OPA_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  OPA_VNIC_EMA_DATA ; 
 scalar_t__ OPA_VNIC_UNSUP_ATTR ; 
 int /*<<< orphan*/  RDMA_DESTROY_AH_SLEEPABLE ; 
 struct ib_mad_send_buf* FUNC1 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_mad_send_buf* FUNC2 (struct ib_mad_agent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct opa_vnic_vema_mad*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_send_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 
 int /*<<< orphan*/  FUNC11 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 

__attribute__((used)) static void FUNC12(struct ib_mad_agent *mad_agent,
		      struct ib_mad_send_buf *send_buf,
		      struct ib_mad_recv_wc *mad_wc)
{
	struct opa_vnic_vema_port *port;
	struct ib_ah              *ah;
	struct ib_mad_send_buf    *rsp;
	struct opa_vnic_vema_mad  *vema_mad;

	if (!mad_wc || !mad_wc->recv_buf.mad)
		return;

	port = mad_agent->context;
	ah = FUNC1(mad_agent->qp->pd, mad_wc->wc,
				  mad_wc->recv_buf.grh, mad_agent->port_num);
	if (FUNC0(ah))
		goto free_recv_mad;

	rsp = FUNC2(mad_agent, mad_wc->wc->src_qp,
				 mad_wc->wc->pkey_index, 0,
				 IB_MGMT_VENDOR_HDR, OPA_VNIC_EMA_DATA,
				 GFP_KERNEL, OPA_MGMT_BASE_VERSION);
	if (FUNC0(rsp))
		goto err_rsp;

	rsp->ah = ah;
	vema_mad = rsp->mad;
	FUNC6(vema_mad, mad_wc->recv_buf.mad, IB_MGMT_VENDOR_HDR);
	vema_mad->mad_hdr.method = IB_MGMT_METHOD_GET_RESP;
	vema_mad->mad_hdr.status = 0;

	/* Lock ensures network adapter is not removed */
	FUNC7(&port->lock);

	switch (mad_wc->recv_buf.mad->mad_hdr.method) {
	case IB_MGMT_METHOD_GET:
		FUNC10(port, (struct opa_vnic_vema_mad *)mad_wc->recv_buf.mad,
			 vema_mad);
		break;
	case IB_MGMT_METHOD_SET:
		FUNC11(port, (struct opa_vnic_vema_mad *)mad_wc->recv_buf.mad,
			 vema_mad);
		break;
	default:
		vema_mad->mad_hdr.status = OPA_VNIC_UNSUP_ATTR;
		break;
	}
	FUNC8(&port->lock);

	if (!FUNC5(rsp, NULL)) {
		/*
		 * with post send successful ah and send mad
		 * will be destroyed in send handler
		 */
		goto free_recv_mad;
	}

	FUNC4(rsp);

err_rsp:
	FUNC9(ah, RDMA_DESTROY_AH_SLEEPABLE);
free_recv_mad:
	FUNC3(mad_wc);
}