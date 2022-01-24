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
struct psmouse {struct input_dev* dev; struct byd_data* private; } ;
struct input_dev {int dummy; } ;
struct byd_data {int /*<<< orphan*/  btn_right; int /*<<< orphan*/  btn_left; int /*<<< orphan*/  abs_y; int /*<<< orphan*/  abs_x; int /*<<< orphan*/  touch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct psmouse *psmouse)
{
	struct byd_data *priv = psmouse->private;
	struct input_dev *dev = psmouse->dev;

	FUNC1(dev, BTN_TOUCH, priv->touch);
	FUNC1(dev, BTN_TOOL_FINGER, priv->touch);

	FUNC0(dev, ABS_X, priv->abs_x);
	FUNC0(dev, ABS_Y, priv->abs_y);
	FUNC1(dev, BTN_LEFT, priv->btn_left);
	FUNC1(dev, BTN_RIGHT, priv->btn_right);

	FUNC2(dev);
}