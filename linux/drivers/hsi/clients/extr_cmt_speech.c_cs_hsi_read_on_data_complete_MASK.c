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
typedef  int /*<<< orphan*/  u32 ;
struct hsi_msg {scalar_t__ status; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {int data_state; int /*<<< orphan*/  rx_bufs; int /*<<< orphan*/  lock; int /*<<< orphan*/  datawait; int /*<<< orphan*/  rx_slot; TYPE_1__* mmap_cfg; int /*<<< orphan*/  rx_ptr_boundary; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_RX_DATA_RECEIVED ; 
 scalar_t__ HSI_STATUS_ERROR ; 
 int SSI_CHANNEL_STATE_READING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct hsi_msg *msg)
{
	struct cs_hsi_iface *hi = msg->context;
	u32 payload;

	if (FUNC6(msg->status == HSI_STATUS_ERROR)) {
		FUNC1(hi, msg);
		return;
	}

	FUNC4(&hi->lock);
	FUNC0(!(hi->data_state & SSI_CHANNEL_STATE_READING));
	hi->data_state &= ~SSI_CHANNEL_STATE_READING;
	payload = CS_RX_DATA_RECEIVED;
	payload |= hi->rx_slot;
	hi->rx_slot++;
	hi->rx_slot %= hi->rx_ptr_boundary;
	/* expose current rx ptr in mmap area */
	hi->mmap_cfg->rx_ptr = hi->rx_slot;
	if (FUNC6(FUNC7(&hi->datawait)))
		FUNC8(&hi->datawait);
	FUNC5(&hi->lock);

	FUNC3(payload, hi->rx_bufs);
	FUNC2(hi);
}