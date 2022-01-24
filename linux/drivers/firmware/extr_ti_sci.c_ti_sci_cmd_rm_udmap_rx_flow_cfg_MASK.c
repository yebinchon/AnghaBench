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
struct ti_sci_msg_rm_udmap_flow_cfg_req {int /*<<< orphan*/  rx_ps_location; int /*<<< orphan*/  rx_fdq3_qnum; int /*<<< orphan*/  rx_fdq2_qnum; int /*<<< orphan*/  rx_fdq1_qnum; int /*<<< orphan*/  rx_fdq0_sz0_qnum; int /*<<< orphan*/  rx_dest_tag_lo_sel; int /*<<< orphan*/  rx_dest_tag_hi_sel; int /*<<< orphan*/  rx_src_tag_lo_sel; int /*<<< orphan*/  rx_src_tag_hi_sel; int /*<<< orphan*/  rx_dest_tag_lo; int /*<<< orphan*/  rx_dest_tag_hi; int /*<<< orphan*/  rx_src_tag_lo; int /*<<< orphan*/  rx_src_tag_hi; int /*<<< orphan*/  rx_dest_qnum; int /*<<< orphan*/  rx_sop_offset; int /*<<< orphan*/  rx_desc_type; int /*<<< orphan*/  rx_error_handling; int /*<<< orphan*/  rx_psinfo_present; int /*<<< orphan*/  rx_einfo_present; int /*<<< orphan*/  flow_index; int /*<<< orphan*/  nav_id; int /*<<< orphan*/  valid_params; } ;
struct ti_sci_msg_rm_udmap_flow_cfg {int /*<<< orphan*/  flow_index; int /*<<< orphan*/  rx_ps_location; int /*<<< orphan*/  rx_fdq3_qnum; int /*<<< orphan*/  rx_fdq2_qnum; int /*<<< orphan*/  rx_fdq1_qnum; int /*<<< orphan*/  rx_fdq0_sz0_qnum; int /*<<< orphan*/  rx_dest_tag_lo_sel; int /*<<< orphan*/  rx_dest_tag_hi_sel; int /*<<< orphan*/  rx_src_tag_lo_sel; int /*<<< orphan*/  rx_src_tag_hi_sel; int /*<<< orphan*/  rx_dest_tag_lo; int /*<<< orphan*/  rx_dest_tag_hi; int /*<<< orphan*/  rx_src_tag_lo; int /*<<< orphan*/  rx_src_tag_hi; int /*<<< orphan*/  rx_dest_qnum; int /*<<< orphan*/  rx_sop_offset; int /*<<< orphan*/  rx_desc_type; int /*<<< orphan*/  rx_error_handling; int /*<<< orphan*/  rx_psinfo_present; int /*<<< orphan*/  rx_einfo_present; int /*<<< orphan*/  nav_id; int /*<<< orphan*/  valid_params; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {struct device* dev; int /*<<< orphan*/  minfo; } ;
struct ti_sci_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer*) ; 
 scalar_t__ FUNC1 (struct ti_sci_handle const*) ; 
 int FUNC2 (struct ti_sci_xfer*) ; 
 int /*<<< orphan*/  TISCI_MSG_RM_UDMAP_FLOW_CFG ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC5 (struct ti_sci_handle const*) ; 
 int FUNC6 (struct ti_sci_info*,struct ti_sci_xfer*) ; 
 struct ti_sci_xfer* FUNC7 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (struct ti_sci_msg_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ti_sci_xfer*) ; 

__attribute__((used)) static int FUNC10(const struct ti_sci_handle *handle,
			const struct ti_sci_msg_rm_udmap_flow_cfg *params)
{
	struct ti_sci_msg_rm_udmap_flow_cfg_req *req;
	struct ti_sci_msg_hdr *resp;
	struct ti_sci_xfer *xfer;
	struct ti_sci_info *info;
	struct device *dev;
	int ret = 0;

	if (FUNC1(handle))
		return -EINVAL;

	info = FUNC5(handle);
	dev = info->dev;

	xfer = FUNC7(info, TISCI_MSG_RM_UDMAP_FLOW_CFG,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC2(xfer);
		FUNC4(dev, "RX_FL_CFG: Message alloc failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_rm_udmap_flow_cfg_req *)xfer->xfer_buf;
	req->valid_params = params->valid_params;
	req->nav_id = params->nav_id;
	req->flow_index = params->flow_index;
	req->rx_einfo_present = params->rx_einfo_present;
	req->rx_psinfo_present = params->rx_psinfo_present;
	req->rx_error_handling = params->rx_error_handling;
	req->rx_desc_type = params->rx_desc_type;
	req->rx_sop_offset = params->rx_sop_offset;
	req->rx_dest_qnum = params->rx_dest_qnum;
	req->rx_src_tag_hi = params->rx_src_tag_hi;
	req->rx_src_tag_lo = params->rx_src_tag_lo;
	req->rx_dest_tag_hi = params->rx_dest_tag_hi;
	req->rx_dest_tag_lo = params->rx_dest_tag_lo;
	req->rx_src_tag_hi_sel = params->rx_src_tag_hi_sel;
	req->rx_src_tag_lo_sel = params->rx_src_tag_lo_sel;
	req->rx_dest_tag_hi_sel = params->rx_dest_tag_hi_sel;
	req->rx_dest_tag_lo_sel = params->rx_dest_tag_lo_sel;
	req->rx_fdq0_sz0_qnum = params->rx_fdq0_sz0_qnum;
	req->rx_fdq1_qnum = params->rx_fdq1_qnum;
	req->rx_fdq2_qnum = params->rx_fdq2_qnum;
	req->rx_fdq3_qnum = params->rx_fdq3_qnum;
	req->rx_ps_location = params->rx_ps_location;

	ret = FUNC6(info, xfer);
	if (ret) {
		FUNC4(dev, "RX_FL_CFG: Mbox send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
	ret = FUNC8(resp) ? 0 : -EINVAL;

fail:
	FUNC9(&info->minfo, xfer);
	FUNC3(info->dev, "RX_FL_CFG: %u ret:%d\n", params->flow_index, ret);
	return ret;
}