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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  struct ti_sci_xfer {scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_resp_get_device_state {int /*<<< orphan*/  current_state; int /*<<< orphan*/  programmed_state; int /*<<< orphan*/  resets; int /*<<< orphan*/  context_loss_count; } ;
struct ti_sci_msg_req_get_device_state {int /*<<< orphan*/  id; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct device* dev; } ;
struct ti_sci_handle {scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer const*) ; 
 int FUNC1 (struct ti_sci_xfer const*) ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  TI_SCI_MSG_GET_DEVICE_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC3 (struct ti_sci_xfer const*) ; 
 int FUNC4 (struct ti_sci_info*,struct ti_sci_xfer const*) ; 
 struct ti_sci_xfer* FUNC5 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_sci_msg_resp_get_device_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ti_sci_xfer const*) ; 

__attribute__((used)) static int FUNC8(const struct ti_sci_handle *handle,
				   u32 id,  u32 *clcnt,  u32 *resets,
				    u8 *p_state,  u8 *c_state)
{
	struct ti_sci_info *info;
	struct ti_sci_msg_req_get_device_state *req;
	struct ti_sci_msg_resp_get_device_state *resp;
	struct ti_sci_xfer *xfer;
	struct device *dev;
	int ret = 0;

	if (FUNC0(handle))
		return FUNC1(handle);
	if (!handle)
		return -EINVAL;

	if (!clcnt && !resets && !p_state && !c_state)
		return -EINVAL;

	info = FUNC3(handle);
	dev = info->dev;

	xfer = FUNC5(info, TI_SCI_MSG_GET_DEVICE_STATE,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC1(xfer);
		FUNC2(dev, "Message alloc failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_req_get_device_state *)xfer->xfer_buf;
	req->id = id;

	ret = FUNC4(info, xfer);
	if (ret) {
		FUNC2(dev, "Mbox send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_resp_get_device_state *)xfer->xfer_buf;
	if (!FUNC6(resp)) {
		ret = -ENODEV;
		goto fail;
	}

	if (clcnt)
		*clcnt = resp->context_loss_count;
	if (resets)
		*resets = resp->resets;
	if (p_state)
		*p_state = resp->programmed_state;
	if (c_state)
		*c_state = resp->current_state;
fail:
	FUNC7(&info->minfo, xfer);

	return ret;
}