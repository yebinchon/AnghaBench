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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct synth_kbd_protocol_response {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct synth_kbd_msg {TYPE_1__ header; } ;
struct synth_kbd_keystroke {int /*<<< orphan*/  make_code; int /*<<< orphan*/  info; } ;
struct hv_kbd_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  hv_serio; int /*<<< orphan*/  started; int /*<<< orphan*/  wait_event; int /*<<< orphan*/  protocol_resp; } ;
struct hv_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int IS_BREAK ; 
 int IS_E0 ; 
 int IS_E1 ; 
#define  SYNTH_KBD_EVENT 129 
#define  SYNTH_KBD_PROTOCOL_RESPONSE 128 
 int /*<<< orphan*/  XTKBD_EMUL0 ; 
 int /*<<< orphan*/  XTKBD_EMUL1 ; 
 int /*<<< orphan*/  XTKBD_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct hv_kbd_dev* FUNC4 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct synth_kbd_msg*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct hv_device *hv_dev,
			      struct synth_kbd_msg *msg, u32 msg_length)
{
	struct hv_kbd_dev *kbd_dev = FUNC4(hv_dev);
	struct synth_kbd_keystroke *ks_msg;
	unsigned long flags;
	u32 msg_type = FUNC1(msg->header.type);
	u32 info;
	u16 scan_code;

	switch (msg_type) {
	case SYNTH_KBD_PROTOCOL_RESPONSE:
		/*
		 * Validate the information provided by the host.
		 * If the host is giving us a bogus packet,
		 * drop the packet (hoping the problem
		 * goes away).
		 */
		if (msg_length < sizeof(struct synth_kbd_protocol_response)) {
			FUNC3(&hv_dev->device,
				"Illegal protocol response packet (len: %d)\n",
				msg_length);
			break;
		}

		FUNC5(&kbd_dev->protocol_resp, msg,
			sizeof(struct synth_kbd_protocol_response));
		FUNC2(&kbd_dev->wait_event);
		break;

	case SYNTH_KBD_EVENT:
		/*
		 * Validate the information provided by the host.
		 * If the host is giving us a bogus packet,
		 * drop the packet (hoping the problem
		 * goes away).
		 */
		if (msg_length < sizeof(struct  synth_kbd_keystroke)) {
			FUNC3(&hv_dev->device,
				"Illegal keyboard event packet (len: %d)\n",
				msg_length);
			break;
		}

		ks_msg = (struct synth_kbd_keystroke *)msg;
		info = FUNC1(ks_msg->info);

		/*
		 * Inject the information through the serio interrupt.
		 */
		FUNC8(&kbd_dev->lock, flags);
		if (kbd_dev->started) {
			if (info & IS_E0)
				FUNC7(kbd_dev->hv_serio,
						XTKBD_EMUL0, 0);
			if (info & IS_E1)
				FUNC7(kbd_dev->hv_serio,
						XTKBD_EMUL1, 0);
			scan_code = FUNC0(ks_msg->make_code);
			if (info & IS_BREAK)
				scan_code |= XTKBD_RELEASE;

			FUNC7(kbd_dev->hv_serio, scan_code, 0);
		}
		FUNC9(&kbd_dev->lock, flags);

		/*
		 * Only trigger a wakeup on key down, otherwise
		 * "echo freeze > /sys/power/state" can't really enter the
		 * state because the Enter-UP can trigger a wakeup at once.
		 */
		if (!(info & IS_BREAK))
			FUNC6(&hv_dev->device);

		break;

	default:
		FUNC3(&hv_dev->device,
			"unhandled message type %d\n", msg_type);
	}
}