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
struct serio {int dummy; } ;
struct hil_dev {int idx4; int* data; scalar_t__ is_pointer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int hil_packet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HIL_ERR_INT ; 
 int HIL_PACKET_MAX_LENGTH ; 
 int HIL_PKT_CMD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct hil_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hil_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hil_dev*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hil_dev*) ; 
 struct hil_dev* FUNC6 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC7(struct serio *serio,
				unsigned char data, unsigned int flags)
{
	struct hil_dev *dev;
	hil_packet packet;
	int idx;

	dev = FUNC6(serio);
	FUNC0(dev == NULL);

	if (dev->idx4 >= HIL_PACKET_MAX_LENGTH * sizeof(hil_packet)) {
		FUNC5(dev);
		goto out;
	}

	idx = dev->idx4 / 4;
	if (!(dev->idx4 % 4))
		dev->data[idx] = 0;
	packet = dev->data[idx];
	packet |= ((hil_packet)data) << ((3 - (dev->idx4 % 4)) * 8);
	dev->data[idx] = packet;

	/* Records of N 4-byte hil_packets must terminate with a command. */
	if ((++dev->idx4 % 4) == 0) {
		if ((packet & 0xffff0000) != HIL_ERR_INT) {
			FUNC5(dev);
		} else if (packet & HIL_PKT_CMD) {
			if (FUNC4(packet))
				FUNC1(dev);
			else if (dev->is_pointer)
				FUNC3(dev);
			else
				FUNC2(dev);
			dev->idx4 = 0;
		}
	}
 out:
	return IRQ_HANDLED;
}