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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
typedef  struct ti_sci_xfer {scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_req_manage_irq {void* secondary_host; void* vint_status_bit; void* global_event; void* vint; void* ia_id; void* dst_host_irq; void* dst_id; void* src_index; void* src_id; int /*<<< orphan*/  valid_params; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct device* dev; } ;
struct ti_sci_handle {scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer const*) ; 
 int FUNC1 (struct ti_sci_xfer const*) ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC3 (struct ti_sci_xfer const*) ; 
 int FUNC4 (struct ti_sci_info*,struct ti_sci_xfer const*) ; 
 struct ti_sci_xfer* FUNC5 (struct ti_sci_info*,void*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (struct ti_sci_msg_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ti_sci_xfer const*) ; 

__attribute__((used)) static int FUNC8(const struct ti_sci_handle *handle,
			     u32 valid_params, u16 src_id, u16 src_index,
			     u16 dst_id, u16 dst_host_irq, u16 ia_id, u16 vint,
			     u16 global_event, u8 vint_status_bit, u8 s_host,
			     u16 type)
{
	struct ti_sci_msg_req_manage_irq *req;
	struct ti_sci_msg_hdr *resp;
	struct ti_sci_xfer *xfer;
	struct ti_sci_info *info;
	struct device *dev;
	int ret = 0;

	if (FUNC0(handle))
		return FUNC1(handle);
	if (!handle)
		return -EINVAL;

	info = FUNC3(handle);
	dev = info->dev;

	xfer = FUNC5(info, type, TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC1(xfer);
		FUNC2(dev, "Message alloc failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_req_manage_irq *)xfer->xfer_buf;
	req->valid_params = valid_params;
	req->src_id = src_id;
	req->src_index = src_index;
	req->dst_id = dst_id;
	req->dst_host_irq = dst_host_irq;
	req->ia_id = ia_id;
	req->vint = vint;
	req->global_event = global_event;
	req->vint_status_bit = vint_status_bit;
	req->secondary_host = s_host;

	ret = FUNC4(info, xfer);
	if (ret) {
		FUNC2(dev, "Mbox send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;

	ret = FUNC6(resp) ? 0 : -ENODEV;

fail:
	FUNC7(&info->minfo, xfer);

	return ret;
}