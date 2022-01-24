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
struct xpad_output_packet {int* data; int len; int pending; } ;
struct usb_xpad {int last_out_packet; int /*<<< orphan*/  odata_lock; struct xpad_output_packet* out_packets; } ;

/* Variables and functions */
 size_t XPAD_OUT_CMD_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xpad*) ; 

__attribute__((used)) static void FUNC3(struct usb_xpad *xpad)
{
	unsigned long flags;
	struct xpad_output_packet *packet =
			&xpad->out_packets[XPAD_OUT_CMD_IDX];

	FUNC0(&xpad->odata_lock, flags);

	packet->data[0] = 0x00;
	packet->data[1] = 0x00;
	packet->data[2] = 0x08;
	packet->data[3] = 0xC0;
	packet->data[4] = 0x00;
	packet->data[5] = 0x00;
	packet->data[6] = 0x00;
	packet->data[7] = 0x00;
	packet->data[8] = 0x00;
	packet->data[9] = 0x00;
	packet->data[10] = 0x00;
	packet->data[11] = 0x00;
	packet->len = 12;
	packet->pending = true;

	/* Reset the sequence so we send out poweroff now */
	xpad->last_out_packet = -1;
	FUNC2(xpad);

	FUNC1(&xpad->odata_lock, flags);
}