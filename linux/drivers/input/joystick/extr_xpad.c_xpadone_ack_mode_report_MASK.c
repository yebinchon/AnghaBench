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
typedef  int u8 ;
struct xpad_output_packet {int len; int* data; int pending; } ;
struct usb_xpad {int last_out_packet; int /*<<< orphan*/  odata_lock; struct xpad_output_packet* out_packets; } ;
typedef  int /*<<< orphan*/  mode_report_ack ;

/* Variables and functions */
 size_t XPAD_OUT_CMD_IDX ; 
 int /*<<< orphan*/  FUNC0 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xpad*) ; 

__attribute__((used)) static void FUNC4(struct usb_xpad *xpad, u8 seq_num)
{
	unsigned long flags;
	struct xpad_output_packet *packet =
			&xpad->out_packets[XPAD_OUT_CMD_IDX];
	static const u8 mode_report_ack[] = {
		0x01, 0x20, 0x00, 0x09, 0x00, 0x07, 0x20, 0x02,
		0x00, 0x00, 0x00, 0x00, 0x00
	};

	FUNC1(&xpad->odata_lock, flags);

	packet->len = sizeof(mode_report_ack);
	FUNC0(packet->data, mode_report_ack, packet->len);
	packet->data[2] = seq_num;
	packet->pending = true;

	/* Reset the sequence so we send out the ack now */
	xpad->last_out_packet = -1;
	FUNC3(xpad);

	FUNC2(&xpad->odata_lock, flags);
}