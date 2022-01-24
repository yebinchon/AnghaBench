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
struct psmouse {unsigned char* packet; int pktcnt; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
 int /*<<< orphan*/  PSMOUSE_GOOD_DATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static psmouse_ret_t FUNC6(struct psmouse *psmouse)
{
	unsigned char *packet = psmouse->packet;
	struct input_dev *dev = psmouse->dev;

	if (psmouse->pktcnt != 5)
		return PSMOUSE_GOOD_DATA;

	FUNC3(dev, ABS_X, FUNC1(packet));
	FUNC3(dev, ABS_Y, FUNC2(packet));
	FUNC4(dev, BTN_TOUCH, FUNC0(packet));
	FUNC5(dev);

	return PSMOUSE_FULL_PACKET;
}