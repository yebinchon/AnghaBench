#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rmpp_type; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct TYPE_3__ {struct ib_rmpp_mad* mad; } ;
struct ib_mad_send_wr_private {int seg_num; int refcount; scalar_t__ timeout; int /*<<< orphan*/  newwin; TYPE_1__ send_buf; } ;

/* Variables and functions */
 int IB_MGMT_RMPP_FLAG_ACTIVE ; 
 scalar_t__ IB_MGMT_RMPP_TYPE_DATA ; 
 int IB_RMPP_RESULT_CONSUMED ; 
 int IB_RMPP_RESULT_INTERNAL ; 
 int IB_RMPP_RESULT_UNHANDLED ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_send_wr_private*) ; 
 int FUNC2 (struct ib_mad_send_wr_private*) ; 

int FUNC3(struct ib_mad_send_wr_private *mad_send_wr)
{
	struct ib_rmpp_mad *rmpp_mad;
	int ret;

	rmpp_mad = mad_send_wr->send_buf.mad;
	if (!(FUNC0(&rmpp_mad->rmpp_hdr) &
	      IB_MGMT_RMPP_FLAG_ACTIVE))
		return IB_RMPP_RESULT_UNHANDLED;

	if (rmpp_mad->rmpp_hdr.rmpp_type != IB_MGMT_RMPP_TYPE_DATA) {
		mad_send_wr->seg_num = 1;
		return IB_RMPP_RESULT_INTERNAL;
	}

	mad_send_wr->newwin = FUNC1(mad_send_wr);

	/* We need to wait for the final ACK even if there isn't a response */
	mad_send_wr->refcount += (mad_send_wr->timeout == 0);
	ret = FUNC2(mad_send_wr);
	if (!ret)
		return IB_RMPP_RESULT_CONSUMED;
	return ret;
}