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
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct alps_data {int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  BTN_TOOL_QUADTAP ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct alps_data *priv,
					  struct input_dev *dev1)
{
	FUNC1(dev1, ABS_MT_POSITION_X, 0, priv->x_max, 0, 0);
	FUNC1(dev1, ABS_MT_POSITION_Y, 0, priv->y_max, 0, 0);

	FUNC0(dev1, ABS_MT_POSITION_X, priv->x_res);
	FUNC0(dev1, ABS_MT_POSITION_Y, priv->y_res);

	FUNC2(BTN_TOOL_TRIPLETAP, dev1->keybit);
	FUNC2(BTN_TOOL_QUADTAP, dev1->keybit);
}