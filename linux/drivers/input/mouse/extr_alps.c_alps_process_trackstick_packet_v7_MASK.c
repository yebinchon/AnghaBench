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
struct psmouse {unsigned char* packet; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_data {int flags; struct input_dev* dev2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int ALPS_DUALPOINT ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,char*) ; 

__attribute__((used)) static void FUNC5(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	unsigned char *packet = psmouse->packet;
	struct input_dev *dev2 = priv->dev2;
	int x, y, z;

	/* It should be a DualPoint when received trackstick packet */
	if (!(priv->flags & ALPS_DUALPOINT)) {
		FUNC4(psmouse,
			     "Rejected trackstick packet from non DualPoint device");
		return;
	}

	x = ((packet[2] & 0xbf)) | ((packet[3] & 0x10) << 2);
	y = (packet[3] & 0x07) | (packet[4] & 0xb8) |
	    ((packet[3] & 0x20) << 1);
	z = (packet[5] & 0x3f) | ((packet[3] & 0x80) >> 1);

	FUNC1(dev2, REL_X, (char)x);
	FUNC1(dev2, REL_Y, -((char)y));
	FUNC0(dev2, ABS_PRESSURE, z);

	FUNC3(dev2, packet[1]);

	FUNC2(dev2);
}