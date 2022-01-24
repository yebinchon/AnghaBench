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
struct wacom_wac {struct input_dev* pen_input; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_RZ ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
 int /*<<< orphan*/  BTN_EXTRA ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_SIDE ; 
 int /*<<< orphan*/  BTN_TOOL_LENS ; 
 int /*<<< orphan*/  BTN_TOOL_MOUSE ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wacom_wac*) ; 

__attribute__((used)) static void FUNC5(struct wacom_wac *wacom_wac)
{
	struct input_dev *input_dev = wacom_wac->pen_input;

	FUNC3(input_dev, EV_REL, REL_WHEEL);

	FUNC4(wacom_wac);

	FUNC0(BTN_LEFT, input_dev->keybit);
	FUNC0(BTN_RIGHT, input_dev->keybit);
	FUNC0(BTN_MIDDLE, input_dev->keybit);
	FUNC0(BTN_SIDE, input_dev->keybit);
	FUNC0(BTN_EXTRA, input_dev->keybit);
	FUNC0(BTN_TOOL_MOUSE, input_dev->keybit);
	FUNC0(BTN_TOOL_LENS, input_dev->keybit);

	FUNC2(input_dev, ABS_RZ, -900, 899, 0, 0);
	FUNC1(input_dev, ABS_RZ, 287);
	FUNC2(input_dev, ABS_THROTTLE, -1023, 1023, 0, 0);
}