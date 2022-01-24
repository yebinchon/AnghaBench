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
struct ti_sci_xfer {scalar_t__ xfer_buf; } ;
struct ti_sci_msg_rm_udmap_rx_ch_cfg_req {int /*<<< orphan*/  rx_burst_size; int /*<<< orphan*/  rx_ignore_long; int /*<<< orphan*/  rx_ignore_short; int /*<<< orphan*/  rx_chan_type; int /*<<< orphan*/  rx_atype; int /*<<< orphan*/  rx_pause_on_err; int /*<<< orphan*/  flowid_cnt; int /*<<< orphan*/  flowid_start; int /*<<< orphan*/  rx_sched_priority; int /*<<< orphan*/  rx_orderid; int /*<<< orphan*/  rx_qos; int /*<<< orphan*/  rx_priority; int /*<<< orphan*/  rxcq_qnum; int /*<<< orphan*/  rx_fetch_size; int /*<<< orphan*/  index; int /*<<< orphan*/  nav_id; int /*<<< orphan*/  valid_params; } ;
struct ti_sci_msg_rm_udmap_rx_ch_cfg {int /*<<< orphan*/  index; int /*<<< orphan*/  rx_burst_size; int /*<<< orphan*/  rx_ignore_long; int /*<<< orphan*/  rx_ignore_short; int /*<<< orphan*/  rx_chan_type; int /*<<< orphan*/  rx_atype; int /*<<< orphan*/  rx_pause_on_err; int /*<<< orphan*/  flowid_cnt; int /*<<< orphan*/  flowid_start; int /*<<< orphan*/  rx_sched_priority; int /*<<< orphan*/  rx_orderid; int /*<<< orphan*/  rx_qos; int /*<<< orphan*/  rx_priority; int /*<<< orphan*/  rxcq_qnum; int /*<<< orphan*/  rx_fetch_size; int /*<<< orphan*/  nav_id; int /*<<< orphan*/  valid_params; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct device* dev; } ;
struct ti_sci_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer*) ; 
 scalar_t__ FUNC1 (struct ti_sci_handle const*) ; 
 int FUNC2 (struct ti_sci_xfer*) ; 
 int /*<<< orphan*/  TISCI_MSG_RM_UDMAP_RX_CH_CFG ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC5 (struct ti_sci_handle const*) ; 
 int FUNC6 (struct ti_sci_info*,struct ti_sci_xfer*) ; 
 struct ti_sci_xfer* FUNC7 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (struct ti_sci_msg_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ti_sci_xfer*) ; 

__attribute__((used)) static int FUNC10(const struct ti_sci_handle *handle,
			const struct ti_sci_msg_rm_udmap_rx_ch_cfg *params)
{
	struct ti_sci_msg_rm_udmap_rx_ch_cfg_req *req;
	struct ti_sci_msg_hdr *resp;
	struct ti_sci_xfer *xfer;
	struct ti_sci_info *info;
	struct device *dev;
	int ret = 0;

	if (FUNC1(handle))
		return -EINVAL;

	info = FUNC5(handle);
	dev = info->dev;

	xfer = FUNC7(info, TISCI_MSG_RM_UDMAP_RX_CH_CFG,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC2(xfer);
		FUNC4(dev, "Message RX_CH_CFG alloc failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_rm_udmap_rx_ch_cfg_req *)xfer->xfer_buf;
	req->valid_params = params->valid_params;
	req->nav_id = params->nav_id;
	req->index = params->index;
	req->rx_fetch_size = params->rx_fetch_size;
	req->rxcq_qnum = params->rxcq_qnum;
	req->rx_priority = params->rx_priority;
	req->rx_qos = params->rx_qos;
	req->rx_orderid = params->rx_orderid;
	req->rx_sched_priority = params->rx_sched_priority;
	req->flowid_start = params->flowid_start;
	req->flowid_cnt = params->flowid_cnt;
	req->rx_pause_on_err = params->rx_pause_on_err;
	req->rx_atype = params->rx_atype;
	req->rx_chan_type = params->rx_chan_type;
	req->rx_ignore_short = params->rx_ignore_short;
	req->rx_ignore_long = params->rx_ignore_long;
	req->rx_burst_size = params->rx_burst_size;

	ret = FUNC6(info, xfer);
	if (ret) {
		FUNC4(dev, "Mbox send RX_CH_CFG fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
	ret = FUNC8(resp) ? 0 : -EINVAL;

fail:
	FUNC9(&info->minfo, xfer);
	FUNC3(dev, "RX_CH_CFG: chn %u ret:%d\n", params->index, ret);
	return ret;
}