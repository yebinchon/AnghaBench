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
struct TYPE_4__ {scalar_t__ status; scalar_t__ poll_completion; int /*<<< orphan*/  protocol_id; } ;
struct scmi_xfer {TYPE_2__ hdr; int /*<<< orphan*/  done; } ;
struct scmi_info {TYPE_1__* desc; int /*<<< orphan*/  tx_idr; struct device* dev; } ;
struct scmi_handle {int dummy; } ;
struct scmi_chan_info {int /*<<< orphan*/  chan; int /*<<< orphan*/  payload; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {int /*<<< orphan*/  max_rx_timeout_ms; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SCMI_MAX_POLL_TO_NS ; 
 scalar_t__ _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,void*) ; 
 struct scmi_info* FUNC2 (struct scmi_handle const*) ; 
 struct scmi_chan_info* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct scmi_xfer*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scmi_xfer*,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct scmi_chan_info*,struct scmi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

int FUNC16(const struct scmi_handle *handle, struct scmi_xfer *xfer)
{
	int ret;
	int timeout;
	struct scmi_info *info = FUNC2(handle);
	struct device *dev = info->dev;
	struct scmi_chan_info *cinfo;

	cinfo = FUNC3(&info->tx_idr, xfer->hdr.protocol_id);
	if (FUNC14(!cinfo))
		return -EINVAL;

	ret = FUNC8(cinfo->chan, xfer);
	if (ret < 0) {
		FUNC0(dev, "mbox send fail %d\n", ret);
		return ret;
	}

	/* mbox_send_message returns non-negative value on success, so reset */
	ret = 0;

	if (xfer->hdr.poll_completion) {
		ktime_t stop = FUNC4(FUNC6(), SCMI_MAX_POLL_TO_NS);

		FUNC13(FUNC12(cinfo, xfer, stop));

		if (FUNC5(FUNC6(), stop))
			FUNC10(xfer, cinfo->payload);
		else
			ret = -ETIMEDOUT;
	} else {
		/* And we wait for the response. */
		timeout = FUNC9(info->desc->max_rx_timeout_ms);
		if (!FUNC15(&xfer->done, timeout)) {
			FUNC1(dev, "mbox timed out in resp(caller: %pS)\n",
				(void *)_RET_IP_);
			ret = -ETIMEDOUT;
		}
	}

	if (!ret && xfer->hdr.status)
		ret = FUNC11(xfer->hdr.status);

	/*
	 * NOTE: we might prefer not to need the mailbox ticker to manage the
	 * transfer queueing since the protocol layer queues things by itself.
	 * Unfortunately, we have to kick the mailbox framework after we have
	 * received our message.
	 */
	FUNC7(cinfo->chan, ret);

	return ret;
}