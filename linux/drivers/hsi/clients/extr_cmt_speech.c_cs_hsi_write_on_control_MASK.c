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
struct TYPE_3__ {int nents; } ;
struct hsi_msg {int /*<<< orphan*/  complete; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int control_state; TYPE_2__* cl; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int SSI_CHANNEL_STATE_ERROR ; 
 int SSI_CHANNEL_STATE_READING ; 
 int SSI_CHANNEL_STATE_WRITING ; 
 struct hsi_msg* FUNC0 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  cs_hsi_write_on_control_complete ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (TYPE_2__*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cs_hsi_iface *hi, u32 message)
{
	struct hsi_msg *msg;
	int ret;

	FUNC7(&hi->lock);
	if (hi->control_state & SSI_CHANNEL_STATE_ERROR) {
		FUNC8(&hi->lock);
		return -EIO;
	}
	if (hi->control_state & SSI_CHANNEL_STATE_WRITING) {
		FUNC5(&hi->cl->device,
			"Write still pending on control channel.\n");
		FUNC8(&hi->lock);
		return -EBUSY;
	}
	hi->control_state |= SSI_CHANNEL_STATE_WRITING;
	msg = FUNC0(hi);
	FUNC8(&hi->lock);

	FUNC3(msg, message);
	msg->sgt.nents = 1;
	msg->complete = cs_hsi_write_on_control_complete;
	FUNC4(&hi->cl->device,
		"Sending control message %08X\n", message);
	ret = FUNC6(hi->cl, msg);
	if (ret) {
		FUNC5(&hi->cl->device,
			"async_write failed with %d\n", ret);
		FUNC1(hi, msg);
	}

	/*
	 * Make sure control read is always pending when issuing
	 * new control writes. This is needed as the controller
	 * may flush our messages if e.g. the peer device reboots
	 * unexpectedly (and we cannot directly resubmit a new read from
	 * the message destructor; see cs_cmd_destructor()).
	 */
	if (!(hi->control_state & SSI_CHANNEL_STATE_READING)) {
		FUNC5(&hi->cl->device, "Restarting control reads\n");
		FUNC2(hi);
	}

	return 0;
}