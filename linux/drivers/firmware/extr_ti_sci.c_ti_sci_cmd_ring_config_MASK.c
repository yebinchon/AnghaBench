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
typedef  void* u32 ;
typedef  void* u16 ;
struct ti_sci_xfer {scalar_t__ xfer_buf; } ;
struct ti_sci_msg_rm_ring_cfg_req {void* order_id; void* size; void* mode; void* count; void* addr_hi; void* addr_lo; void* index; void* nav_id; void* valid_params; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {int /*<<< orphan*/  minfo; struct device* dev; } ;
struct ti_sci_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ti_sci_xfer*) ; 
 scalar_t__ FUNC1 (struct ti_sci_handle const*) ; 
 int FUNC2 (struct ti_sci_xfer*) ; 
 int /*<<< orphan*/  TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ; 
 int /*<<< orphan*/  TI_SCI_MSG_RM_RING_CFG ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC5 (struct ti_sci_handle const*) ; 
 int FUNC6 (struct ti_sci_info*,struct ti_sci_xfer*) ; 
 struct ti_sci_xfer* FUNC7 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (struct ti_sci_msg_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ti_sci_xfer*) ; 

__attribute__((used)) static int FUNC10(const struct ti_sci_handle *handle,
				  u32 valid_params, u16 nav_id, u16 index,
				  u32 addr_lo, u32 addr_hi, u32 count,
				  u8 mode, u8 size, u8 order_id)
{
	struct ti_sci_msg_rm_ring_cfg_req *req;
	struct ti_sci_msg_hdr *resp;
	struct ti_sci_xfer *xfer;
	struct ti_sci_info *info;
	struct device *dev;
	int ret = 0;

	if (FUNC1(handle))
		return -EINVAL;

	info = FUNC5(handle);
	dev = info->dev;

	xfer = FUNC7(info, TI_SCI_MSG_RM_RING_CFG,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC2(xfer);
		FUNC4(dev, "RM_RA:Message config failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_rm_ring_cfg_req *)xfer->xfer_buf;
	req->valid_params = valid_params;
	req->nav_id = nav_id;
	req->index = index;
	req->addr_lo = addr_lo;
	req->addr_hi = addr_hi;
	req->count = count;
	req->mode = mode;
	req->size = size;
	req->order_id = order_id;

	ret = FUNC6(info, xfer);
	if (ret) {
		FUNC4(dev, "RM_RA:Mbox config send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
	ret = FUNC8(resp) ? 0 : -ENODEV;

fail:
	FUNC9(&info->minfo, xfer);
	FUNC3(dev, "RM_RA:config ring %u ret:%d\n", index, ret);
	return ret;
}