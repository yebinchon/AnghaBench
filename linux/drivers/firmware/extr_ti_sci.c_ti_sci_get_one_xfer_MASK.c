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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ti_sci_xfers_info {struct ti_sci_xfer* xfer_block; int /*<<< orphan*/  xfer_lock; int /*<<< orphan*/  xfer_alloc_table; int /*<<< orphan*/  sem_xfer_count; } ;
struct TYPE_4__ {size_t len; scalar_t__ buf; } ;
struct ti_sci_xfer {size_t rx_len; int /*<<< orphan*/  done; TYPE_2__ tx_message; } ;
struct ti_sci_msg_hdr {size_t seq; int /*<<< orphan*/  flags; int /*<<< orphan*/  host; int /*<<< orphan*/  type; } ;
struct ti_sci_info {int /*<<< orphan*/  host_id; TYPE_1__* desc; struct ti_sci_xfers_info minfo; } ;
struct TYPE_3__ {size_t max_msg_size; int /*<<< orphan*/  max_msgs; int /*<<< orphan*/  max_rx_timeout_ms; } ;

/* Variables and functions */
 int ERANGE ; 
 struct ti_sci_xfer* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct ti_sci_xfer *FUNC8(struct ti_sci_info *info,
					       u16 msg_type, u32 msg_flags,
					       size_t tx_message_size,
					       size_t rx_message_size)
{
	struct ti_sci_xfers_info *minfo = &info->minfo;
	struct ti_sci_xfer *xfer;
	struct ti_sci_msg_hdr *hdr;
	unsigned long flags;
	unsigned long bit_pos;
	u8 xfer_id;
	int ret;
	int timeout;

	/* Ensure we have sane transfer sizes */
	if (rx_message_size > info->desc->max_msg_size ||
	    tx_message_size > info->desc->max_msg_size ||
	    rx_message_size < sizeof(*hdr) || tx_message_size < sizeof(*hdr))
		return FUNC0(-ERANGE);

	/*
	 * Ensure we have only controlled number of pending messages.
	 * Ideally, we might just have to wait a single message, be
	 * conservative and wait 5 times that..
	 */
	timeout = FUNC3(info->desc->max_rx_timeout_ms) * 5;
	ret = FUNC1(&minfo->sem_xfer_count, timeout);
	if (ret < 0)
		return FUNC0(ret);

	/* Keep the locked section as small as possible */
	FUNC6(&minfo->xfer_lock, flags);
	bit_pos = FUNC2(minfo->xfer_alloc_table,
				      info->desc->max_msgs);
	FUNC5(bit_pos, minfo->xfer_alloc_table);
	FUNC7(&minfo->xfer_lock, flags);

	/*
	 * We already ensured in probe that we can have max messages that can
	 * fit in  hdr.seq - NOTE: this improves access latencies
	 * to predictable O(1) access, BUT, it opens us to risk if
	 * remote misbehaves with corrupted message sequence responses.
	 * If that happens, we are going to be messed up anyways..
	 */
	xfer_id = (u8)bit_pos;

	xfer = &minfo->xfer_block[xfer_id];

	hdr = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
	xfer->tx_message.len = tx_message_size;
	xfer->rx_len = (u8)rx_message_size;

	FUNC4(&xfer->done);

	hdr->seq = xfer_id;
	hdr->type = msg_type;
	hdr->host = info->host_id;
	hdr->flags = msg_flags;

	return xfer;
}