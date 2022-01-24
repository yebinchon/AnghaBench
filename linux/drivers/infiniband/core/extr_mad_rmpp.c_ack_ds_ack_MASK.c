#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  paylen_newwin; scalar_t__ seg_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  method; } ;
struct ib_rmpp_mad {TYPE_3__ rmpp_hdr; TYPE_2__ mad_hdr; } ;
struct ib_mad_send_buf {int /*<<< orphan*/  ah; int /*<<< orphan*/  hdr_len; struct ib_rmpp_mad* mad; } ;
struct TYPE_4__ {int /*<<< orphan*/  mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct ib_mad_agent_private {int /*<<< orphan*/  agent; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MGMT_METHOD_RESP ; 
 int /*<<< orphan*/  IB_MGMT_RMPP_FLAG_ACTIVE ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  RDMA_DESTROY_AH_SLEEPABLE ; 
 struct ib_mad_send_buf* FUNC1 (int /*<<< orphan*/ *,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_send_buf*) ; 
 int FUNC4 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_rmpp_mad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ib_mad_agent_private *agent,
		       struct ib_mad_recv_wc *recv_wc)
{
	struct ib_mad_send_buf *msg;
	struct ib_rmpp_mad *rmpp_mad;
	int ret;

	msg = FUNC1(&agent->agent, recv_wc);
	if (FUNC0(msg))
		return;

	rmpp_mad = msg->mad;
	FUNC6(rmpp_mad, recv_wc->recv_buf.mad, msg->hdr_len);

	rmpp_mad->mad_hdr.method ^= IB_MGMT_METHOD_RESP;
	FUNC5(&rmpp_mad->rmpp_hdr, IB_MGMT_RMPP_FLAG_ACTIVE);
	rmpp_mad->rmpp_hdr.seg_num = 0;
	rmpp_mad->rmpp_hdr.paylen_newwin = FUNC2(1);

	ret = FUNC4(msg, NULL);
	if (ret) {
		FUNC7(msg->ah, RDMA_DESTROY_AH_SLEEPABLE);
		FUNC3(msg);
	}
}