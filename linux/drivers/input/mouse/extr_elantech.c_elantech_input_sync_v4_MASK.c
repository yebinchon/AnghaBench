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
struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct elantech_data {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,unsigned char) ; 

__attribute__((used)) static void FUNC5(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct elantech_data *etd = psmouse->private;
	unsigned char *packet = psmouse->packet;

	/* For clickpads map both buttons to BTN_LEFT */
	if (FUNC0(&etd->info))
		FUNC2(dev, BTN_LEFT, packet[0] & 0x03);
	else
		FUNC4(dev, packet[0]);

	FUNC1(dev, true);
	FUNC3(dev);
}