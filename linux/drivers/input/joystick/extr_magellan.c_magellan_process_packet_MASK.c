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
struct magellan {unsigned char* data; int idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/ * magellan_axes ; 
 int /*<<< orphan*/ * magellan_buttons ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 

__attribute__((used)) static void FUNC4(struct magellan* magellan)
{
	struct input_dev *dev = magellan->dev;
	unsigned char *data = magellan->data;
	int i, t;

	if (!magellan->idx) return;

	switch (magellan->data[0]) {

		case 'd':				/* Axis data */
			if (magellan->idx != 25) return;
			if (FUNC3(data, 24)) return;
			for (i = 0; i < 6; i++)
				FUNC0(dev, magellan_axes[i],
					(data[(i << 2) + 1] << 12 | data[(i << 2) + 2] << 8 |
					 data[(i << 2) + 3] <<  4 | data[(i << 2) + 4]) - 32768);
			break;

		case 'k':				/* Button data */
			if (magellan->idx != 4) return;
			if (FUNC3(data, 3)) return;
			t = (data[1] << 1) | (data[2] << 5) | data[3];
			for (i = 0; i < 9; i++) FUNC1(dev, magellan_buttons[i], (t >> i) & 1);
			break;
	}

	FUNC2(dev);
}