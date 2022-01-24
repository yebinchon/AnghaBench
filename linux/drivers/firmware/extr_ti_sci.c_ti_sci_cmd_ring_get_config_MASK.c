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
typedef  void* u32 ;
struct ti_sci_xfer {scalar_t__ xfer_buf; } ;
struct ti_sci_msg_rm_ring_get_cfg_resp {int /*<<< orphan*/  order_id; int /*<<< orphan*/  size; void* count; void* addr_hi; void* addr_lo; int /*<<< orphan*/  mode; } ;
struct ti_sci_msg_rm_ring_get_cfg_req {void* index; void* nav_id; } ;
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
 int /*<<< orphan*/  TI_SCI_MSG_RM_RING_GET_CFG ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct ti_sci_info* FUNC5 (struct ti_sci_handle const*) ; 
 int FUNC6 (struct ti_sci_info*,struct ti_sci_xfer*) ; 
 struct ti_sci_xfer* FUNC7 (struct ti_sci_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_sci_msg_rm_ring_get_cfg_resp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ti_sci_xfer*) ; 

__attribute__((used)) static int FUNC10(const struct ti_sci_handle *handle,
				      u32 nav_id, u32 index, u8 *mode,
				      u32 *addr_lo, u32 *addr_hi,
				      u32 *count, u8 *size, u8 *order_id)
{
	struct ti_sci_msg_rm_ring_get_cfg_resp *resp;
	struct ti_sci_msg_rm_ring_get_cfg_req *req;
	struct ti_sci_xfer *xfer;
	struct ti_sci_info *info;
	struct device *dev;
	int ret = 0;

	if (FUNC1(handle))
		return -EINVAL;

	info = FUNC5(handle);
	dev = info->dev;

	xfer = FUNC7(info, TI_SCI_MSG_RM_RING_GET_CFG,
				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
				   sizeof(*req), sizeof(*resp));
	if (FUNC0(xfer)) {
		ret = FUNC2(xfer);
		FUNC4(dev,
			"RM_RA:Message get config failed(%d)\n", ret);
		return ret;
	}
	req = (struct ti_sci_msg_rm_ring_get_cfg_req *)xfer->xfer_buf;
	req->nav_id = nav_id;
	req->index = index;

	ret = FUNC6(info, xfer);
	if (ret) {
		FUNC4(dev, "RM_RA:Mbox get config send fail %d\n", ret);
		goto fail;
	}

	resp = (struct ti_sci_msg_rm_ring_get_cfg_resp *)xfer->xfer_buf;

	if (!FUNC8(resp)) {
		ret = -ENODEV;
	} else {
		if (mode)
			*mode = resp->mode;
		if (addr_lo)
			*addr_lo = resp->addr_lo;
		if (addr_hi)
			*addr_hi = resp->addr_hi;
		if (count)
			*count = resp->count;
		if (size)
			*size = resp->size;
		if (order_id)
			*order_id = resp->order_id;
	};

fail:
	FUNC9(&info->minfo, xfer);
	FUNC3(dev, "RM_RA:get config ring %u ret:%d\n", index, ret);
	return ret;
}