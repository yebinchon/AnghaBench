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
struct psmouse {int pktsize; scalar_t__ resync_time; int /*<<< orphan*/  protocol_handler; int /*<<< orphan*/  reconnect; int /*<<< orphan*/  disconnect; struct byd_data* private; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  relbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  propbit; } ;
struct byd_data {int /*<<< orphan*/  timer; struct psmouse* psmouse; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BYD_PAD_HEIGHT ; 
 int /*<<< orphan*/  BYD_PAD_RESOLUTION ; 
 int /*<<< orphan*/  BYD_PAD_WIDTH ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  byd_clear_touch ; 
 int /*<<< orphan*/  byd_disconnect ; 
 int /*<<< orphan*/  byd_process_byte ; 
 int /*<<< orphan*/  byd_reconnect ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct byd_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct byd_data *priv;

	if (FUNC6(psmouse))
		return -EIO;

	if (FUNC2(psmouse))
		return -EIO;

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->psmouse = psmouse;
	FUNC7(&priv->timer, byd_clear_touch, 0);

	psmouse->private = priv;
	psmouse->disconnect = byd_disconnect;
	psmouse->reconnect = byd_reconnect;
	psmouse->protocol_handler = byd_process_byte;
	psmouse->pktsize = 4;
	psmouse->resync_time = 0;

	FUNC1(INPUT_PROP_POINTER, dev->propbit);
	/* Touchpad */
	FUNC1(BTN_TOUCH, dev->keybit);
	FUNC1(BTN_TOOL_FINGER, dev->keybit);
	/* Buttons */
	FUNC1(BTN_LEFT, dev->keybit);
	FUNC1(BTN_RIGHT, dev->keybit);
	FUNC0(BTN_MIDDLE, dev->keybit);

	/* Absolute position */
	FUNC1(EV_ABS, dev->evbit);
	FUNC4(dev, ABS_X, 0, BYD_PAD_WIDTH, 0, 0);
	FUNC4(dev, ABS_Y, 0, BYD_PAD_HEIGHT, 0, 0);
	FUNC3(dev, ABS_X, BYD_PAD_RESOLUTION);
	FUNC3(dev, ABS_Y, BYD_PAD_RESOLUTION);
	/* No relative support */
	FUNC0(EV_REL, dev->evbit);
	FUNC0(REL_X, dev->relbit);
	FUNC0(REL_Y, dev->relbit);

	return 0;
}