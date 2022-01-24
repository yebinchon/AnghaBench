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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int nents; int /*<<< orphan*/  sgl; } ;
struct hsi_msg {scalar_t__ status; int /*<<< orphan*/  complete; TYPE_1__ sgt; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {scalar_t__ iface_state; int data_state; size_t rx_slot; size_t rx_bufs; TYPE_2__* cl; int /*<<< orphan*/  buf_size; scalar_t__* rx_offsets; scalar_t__ mmap_base; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ CS_STATE_CONFIGURED ; 
 scalar_t__ HSI_STATUS_ERROR ; 
 int SSI_CHANNEL_STATE_POLL ; 
 int SSI_CHANNEL_STATE_READING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  cs_hsi_read_on_data_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (TYPE_2__*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct hsi_msg *msg)
{
	struct cs_hsi_iface *hi = msg->context;
	u32 *address;
	int ret;

	if (FUNC7(msg->status == HSI_STATUS_ERROR)) {
		FUNC1(hi, msg);
		return;
	}
	if (FUNC7(hi->iface_state != CS_STATE_CONFIGURED)) {
		FUNC2(&hi->cl->device, "Data received in invalid state\n");
		FUNC1(hi, msg);
		return;
	}

	FUNC5(&hi->lock);
	FUNC0(!(hi->data_state & SSI_CHANNEL_STATE_POLL));
	hi->data_state &= ~SSI_CHANNEL_STATE_POLL;
	hi->data_state |= SSI_CHANNEL_STATE_READING;
	FUNC6(&hi->lock);

	address = (u32 *)(hi->mmap_base +
				hi->rx_offsets[hi->rx_slot % hi->rx_bufs]);
	FUNC4(msg->sgt.sgl, address, hi->buf_size);
	msg->sgt.nents = 1;
	msg->complete = cs_hsi_read_on_data_complete;
	ret = FUNC3(hi->cl, msg);
	if (ret)
		FUNC1(hi, msg);
}