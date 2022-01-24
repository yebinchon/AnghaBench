#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;
struct ishtp_cl {int /*<<< orphan*/  fc_spinlock; int /*<<< orphan*/  err_send_fc; int /*<<< orphan*/  ts_max_fc_delay; scalar_t__ ts_rx; int /*<<< orphan*/  ts_out_fc; int /*<<< orphan*/  out_flow_ctrl_cnt; scalar_t__ out_flow_ctrl_creds; scalar_t__ recv_msg_num_frags; } ;
struct hbm_flow_control {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int /*<<< orphan*/  flow_ctrl ;

/* Variables and functions */
 int /*<<< orphan*/  ISHTP_FLOW_CONTROL_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl*,int /*<<< orphan*/ ,struct hbm_flow_control*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_msg_hdr*,size_t const) ; 
 int FUNC2 (struct ishtp_device*,struct ishtp_msg_hdr*,struct hbm_flow_control*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct ishtp_device *dev,
				  struct ishtp_cl *cl)
{
	struct ishtp_msg_hdr hdr;
	struct hbm_flow_control flow_ctrl;
	const size_t len = sizeof(flow_ctrl);
	int	rv;
	unsigned long	flags;

	FUNC6(&cl->fc_spinlock, flags);

	FUNC1(&hdr, len);
	FUNC0(cl, ISHTP_FLOW_CONTROL_CMD, &flow_ctrl, len);

	/*
	 * Sync possible race when RB recycle and packet receive paths
	 * both try to send an out FC
	 */
	if (cl->out_flow_ctrl_creds) {
		FUNC7(&cl->fc_spinlock, flags);
		return	0;
	}

	cl->recv_msg_num_frags = 0;

	rv = FUNC2(dev, &hdr, &flow_ctrl);
	if (!rv) {
		++cl->out_flow_ctrl_creds;
		++cl->out_flow_ctrl_cnt;
		cl->ts_out_fc = FUNC4();
		if (cl->ts_rx) {
			ktime_t ts_diff = FUNC5(cl->ts_out_fc, cl->ts_rx);
			if (FUNC3(ts_diff, cl->ts_max_fc_delay))
				cl->ts_max_fc_delay = ts_diff;
		}
	} else {
		++cl->err_send_fc;
	}

	FUNC7(&cl->fc_spinlock, flags);
	return	rv;
}