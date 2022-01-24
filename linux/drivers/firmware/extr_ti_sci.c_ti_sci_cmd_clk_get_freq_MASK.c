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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  struct ti_sci_xfer {scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_resp_get_clock_freq {int /*<<< orphan*/  freq_hz; } ;
struct ti_sci_msg_req_get_clock_freq {int dev_id; int clk_id; int clk_id_32; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct device* dev; } ;
struct ti_sci_handle {scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer const*) ; 
 int FUNC1 (struct ti_sci_xfer const*) ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  TI_SCI_MSG_GET_CLOCK_FREQ ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC3 (struct ti_sci_xfer const*) ; 
 int FUNC4 (struct ti_sci_info*,struct ti_sci_xfer const*) ; 
 struct ti_sci_xfer* FUNC5 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_sci_msg_resp_get_clock_freq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ti_sci_xfer const*) ; 

__attribute__((used)) static int FUNC8(const struct ti_sci_handle *handle,
				   u32 dev_id, u32 clk_id, u64 *freq)
{
	struct ti_sci_info *info;
	struct ti_sci_msg_req_get_clock_freq *req;
	struct ti_sci_msg_resp_get_clock_freq *resp;
	struct ti_sci_xfer *xfer;
	struct device *dev;
	int ret = 0;

	if (FUNC0(handle))
		return FUNC1(handle);
	if (!handle || !freq)
		return -EINVAL;

	info = FUNC3(handle);
	dev = info->dev;

	xfer = FUNC5(info, TI_SCI_MSG_GET_CLOCK_FREQ,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC1(xfer);
		FUNC2(dev, "Message alloc failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_req_get_clock_freq *)xfer->xfer_buf;
	req->dev_id = dev_id;
	if (clk_id < 255) {
		req->clk_id = clk_id;
	} else {
		req->clk_id = 255;
		req->clk_id_32 = clk_id;
	}

	ret = FUNC4(info, xfer);
	if (ret) {
		FUNC2(dev, "Mbox send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_resp_get_clock_freq *)xfer->xfer_buf;

	if (!FUNC6(resp))
		ret = -ENODEV;
	else
		*freq = resp->freq_hz;

fail:
	FUNC7(&info->minfo, xfer);

	return ret;
}