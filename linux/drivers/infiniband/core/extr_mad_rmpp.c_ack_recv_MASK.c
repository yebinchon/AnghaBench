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
struct mad_rmpp_recv {int /*<<< orphan*/  ah; TYPE_1__* agent; } ;
struct ib_rmpp_mad {int dummy; } ;
struct ib_mad_send_buf {int /*<<< orphan*/  ah; } ;
struct TYPE_8__ {TYPE_5__* mad; } ;
struct ib_mad_recv_wc {TYPE_3__ recv_buf; TYPE_2__* wc; } ;
struct TYPE_9__ {int /*<<< orphan*/  mgmt_class; } ;
struct TYPE_10__ {TYPE_4__ mad_hdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  src_qp; } ;
struct TYPE_6__ {int /*<<< orphan*/  agent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_MGMT_BASE_VERSION ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_send_buf*,struct ib_rmpp_mad*,struct mad_rmpp_recv*) ; 
 struct ib_mad_send_buf* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_send_buf*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mad_rmpp_recv *rmpp_recv,
		     struct ib_mad_recv_wc *recv_wc)
{
	struct ib_mad_send_buf *msg;
	int ret, hdr_len;

	hdr_len = FUNC4(recv_wc->recv_buf.mad->mad_hdr.mgmt_class);
	msg = FUNC2(&rmpp_recv->agent->agent, recv_wc->wc->src_qp,
				 recv_wc->wc->pkey_index, 1, hdr_len,
				 0, GFP_KERNEL,
				 IB_MGMT_BASE_VERSION);
	if (FUNC0(msg))
		return;

	FUNC1(msg, (struct ib_rmpp_mad *) recv_wc->recv_buf.mad, rmpp_recv);
	msg->ah = rmpp_recv->ah;
	ret = FUNC5(msg, NULL);
	if (ret)
		FUNC3(msg);
}