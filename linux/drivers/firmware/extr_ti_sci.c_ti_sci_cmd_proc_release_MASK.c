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
struct TYPE_2__ {scalar_t__ buf; } ;
typedef  struct ti_sci_xfer {TYPE_1__ tx_message; scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_req_proc_release {int /*<<< orphan*/  processor_id; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct device* dev; } ;
struct ti_sci_handle {TYPE_1__ tx_message; scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer const*) ; 
 int FUNC1 (struct ti_sci_xfer const*) ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  TI_SCI_MSG_PROC_RELEASE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC3 (struct ti_sci_xfer const*) ; 
 int FUNC4 (struct ti_sci_info*,struct ti_sci_xfer const*) ; 
 struct ti_sci_xfer* FUNC5 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (struct ti_sci_msg_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ti_sci_xfer const*) ; 

__attribute__((used)) static int FUNC8(const struct ti_sci_handle *handle,
				   u8 proc_id)
{
	struct ti_sci_msg_req_proc_release *req;
	struct ti_sci_msg_hdr *resp;
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

	xfer = FUNC5(info, TI_SCI_MSG_PROC_RELEASE,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC1(xfer);
		FUNC2(dev, "Message alloc failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_req_proc_release *)xfer->xfer_buf;
	req->processor_id = proc_id;

	ret = FUNC4(info, xfer);
	if (ret) {
		FUNC2(dev, "Mbox send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;

	ret = FUNC6(resp) ? 0 : -ENODEV;

fail:
	FUNC7(&info->minfo, xfer);

	return ret;
}