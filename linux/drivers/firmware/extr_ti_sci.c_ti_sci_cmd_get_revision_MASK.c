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
struct ti_sci_version_info {int /*<<< orphan*/  firmware_description; int /*<<< orphan*/  firmware_revision; int /*<<< orphan*/  abi_minor; int /*<<< orphan*/  abi_major; } ;
struct ti_sci_msg_resp_version {int /*<<< orphan*/  firmware_description; int /*<<< orphan*/  firmware_revision; int /*<<< orphan*/  abi_minor; int /*<<< orphan*/  abi_major; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_handle {struct ti_sci_version_info version; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct ti_sci_handle handle; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ti_sci_xfer*) ; 
 int FUNC1 (struct ti_sci_xfer*) ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  TI_SCI_MSG_VERSION ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ti_sci_info*,struct ti_sci_xfer*) ; 
 struct ti_sci_xfer* FUNC5 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ti_sci_xfer*) ; 

__attribute__((used)) static int FUNC7(struct ti_sci_info *info)
{
	struct device *dev = info->dev;
	struct ti_sci_handle *handle = &info->handle;
	struct ti_sci_version_info *ver = &handle->version;
	struct ti_sci_msg_resp_version *rev_info;
	struct ti_sci_xfer *xfer;
	int ret;

	xfer = FUNC5(info, TI_SCI_MSG_VERSION,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(struct ti_sci_msg_hdr),
				   sizeof(*rev_info));
	if (FUNC0(xfer)) {
		ret = FUNC1(xfer);
		FUNC2(dev, "Message alloc failed(%d)\n", ret);
		return ret;
	}

	rev_info = (struct ti_sci_msg_resp_version *)xfer->xfer_buf;

	ret = FUNC4(info, xfer);
	if (ret) {
		FUNC2(dev, "Mbox send fail %d\n", ret);
		goto fail;
	}

	ver->abi_major = rev_info->abi_major;
	ver->abi_minor = rev_info->abi_minor;
	ver->firmware_revision = rev_info->firmware_revision;
	FUNC3(ver->firmware_description, rev_info->firmware_description,
		sizeof(ver->firmware_description));

fail:
	FUNC6(&info->minfo, xfer);
	return ret;
}