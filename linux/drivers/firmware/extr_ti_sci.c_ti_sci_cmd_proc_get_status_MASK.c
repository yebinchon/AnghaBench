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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ buf; } ;
typedef  struct ti_sci_xfer {TYPE_1__ tx_message; scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_resp_get_status {int bootvector_low; int /*<<< orphan*/  status_flags; int /*<<< orphan*/  control_flags; int /*<<< orphan*/  config_flags; scalar_t__ bootvector_high; } ;
struct ti_sci_msg_req_get_status {int /*<<< orphan*/  processor_id; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct device* dev; } ;
struct ti_sci_handle {TYPE_1__ tx_message; scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer const*) ; 
 int FUNC1 (struct ti_sci_xfer const*) ; 
 int TI_SCI_ADDR_HIGH_MASK ; 
 int TI_SCI_ADDR_HIGH_SHIFT ; 
 int TI_SCI_ADDR_LOW_MASK ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  TI_SCI_MSG_GET_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC3 (struct ti_sci_xfer const*) ; 
 int FUNC4 (struct ti_sci_info*,struct ti_sci_xfer const*) ; 
 struct ti_sci_xfer* FUNC5 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_sci_msg_resp_get_status*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ti_sci_xfer const*) ; 

__attribute__((used)) static int FUNC8(const struct ti_sci_handle *handle,
				      u8 proc_id, u64 *bv, u32 *cfg_flags,
				      u32 *ctrl_flags, u32 *sts_flags)
{
	struct ti_sci_msg_resp_get_status *resp;
	struct ti_sci_msg_req_get_status *req;
	struct ti_sci_info *info;
	struct ti_sci_xfer *xfer;
	struct device *dev;
	int ret = 0;

	if (!handle)
		return -EINVAL;
	if (FUNC0(handle))
		return FUNC1(handle);

	info = FUNC3(handle);
	dev = info->dev;

	xfer = FUNC5(info, TI_SCI_MSG_GET_STATUS,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC1(xfer);
		FUNC2(dev, "Message alloc failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_req_get_status *)xfer->xfer_buf;
	req->processor_id = proc_id;

	ret = FUNC4(info, xfer);
	if (ret) {
		FUNC2(dev, "Mbox send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_resp_get_status *)xfer->tx_message.buf;

	if (!FUNC6(resp)) {
		ret = -ENODEV;
	} else {
		*bv = (resp->bootvector_low & TI_SCI_ADDR_LOW_MASK) |
		      (((u64)resp->bootvector_high << TI_SCI_ADDR_HIGH_SHIFT) &
		       TI_SCI_ADDR_HIGH_MASK);
		*cfg_flags = resp->config_flags;
		*ctrl_flags = resp->control_flags;
		*sts_flags = resp->status_flags;
	}

fail:
	FUNC7(&info->minfo, xfer);

	return ret;
}