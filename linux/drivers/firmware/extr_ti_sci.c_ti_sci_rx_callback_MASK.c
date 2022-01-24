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
typedef  size_t u8 ;
struct ti_sci_xfers_info {struct ti_sci_xfer* xfer_block; int /*<<< orphan*/  xfer_alloc_table; } ;
struct ti_sci_xfer {scalar_t__ rx_len; int /*<<< orphan*/  done; int /*<<< orphan*/  xfer_buf; } ;
struct ti_sci_msg_hdr {size_t seq; } ;
struct ti_sci_info {TYPE_1__* desc; struct ti_sci_xfers_info minfo; struct device* dev; } ;
struct ti_msgmgr_message {scalar_t__ len; scalar_t__ buf; } ;
struct mbox_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_msg_size; } ;

/* Variables and functions */
 struct ti_sci_info* FUNC0 (struct mbox_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct ti_sci_msg_hdr*) ; 

__attribute__((used)) static void FUNC6(struct mbox_client *cl, void *m)
{
	struct ti_sci_info *info = FUNC0(cl);
	struct device *dev = info->dev;
	struct ti_sci_xfers_info *minfo = &info->minfo;
	struct ti_msgmgr_message *mbox_msg = m;
	struct ti_sci_msg_hdr *hdr = (struct ti_sci_msg_hdr *)mbox_msg->buf;
	struct ti_sci_xfer *xfer;
	u8 xfer_id;

	xfer_id = hdr->seq;

	/*
	 * Are we even expecting this?
	 * NOTE: barriers were implicit in locks used for modifying the bitmap
	 */
	if (!FUNC4(xfer_id, minfo->xfer_alloc_table)) {
		FUNC2(dev, "Message for %d is not expected!\n", xfer_id);
		return;
	}

	xfer = &minfo->xfer_block[xfer_id];

	/* Is the message of valid length? */
	if (mbox_msg->len > info->desc->max_msg_size) {
		FUNC2(dev, "Unable to handle %zu xfer(max %d)\n",
			mbox_msg->len, info->desc->max_msg_size);
		FUNC5(dev, hdr);
		return;
	}
	if (mbox_msg->len < xfer->rx_len) {
		FUNC2(dev, "Recv xfer %zu < expected %d length\n",
			mbox_msg->len, xfer->rx_len);
		FUNC5(dev, hdr);
		return;
	}

	FUNC5(dev, hdr);
	/* Take a copy to the rx buffer.. */
	FUNC3(xfer->xfer_buf, mbox_msg->buf, xfer->rx_len);
	FUNC1(&xfer->done);
}