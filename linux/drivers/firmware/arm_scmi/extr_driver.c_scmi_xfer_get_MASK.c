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
typedef  size_t u16 ;
struct scmi_xfers_info {struct scmi_xfer* xfer_block; int /*<<< orphan*/  xfer_lock; int /*<<< orphan*/  xfer_alloc_table; } ;
struct TYPE_4__ {size_t seq; } ;
struct scmi_xfer {int /*<<< orphan*/  done; TYPE_2__ hdr; } ;
struct scmi_info {TYPE_1__* desc; } ;
struct scmi_handle {int dummy; } ;
struct TYPE_3__ {unsigned long max_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct scmi_xfer* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct scmi_info* FUNC2 (struct scmi_handle const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct scmi_xfer *FUNC7(const struct scmi_handle *handle,
				       struct scmi_xfers_info *minfo)
{
	u16 xfer_id;
	struct scmi_xfer *xfer;
	unsigned long flags, bit_pos;
	struct scmi_info *info = FUNC2(handle);

	/* Keep the locked section as small as possible */
	FUNC5(&minfo->xfer_lock, flags);
	bit_pos = FUNC1(minfo->xfer_alloc_table,
				      info->desc->max_msg);
	if (bit_pos == info->desc->max_msg) {
		FUNC6(&minfo->xfer_lock, flags);
		return FUNC0(-ENOMEM);
	}
	FUNC4(bit_pos, minfo->xfer_alloc_table);
	FUNC6(&minfo->xfer_lock, flags);

	xfer_id = bit_pos;

	xfer = &minfo->xfer_block[xfer_id];
	xfer->hdr.seq = xfer_id;
	FUNC3(&xfer->done);

	return xfer;
}