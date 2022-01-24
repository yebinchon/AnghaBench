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
struct input_dev {int /*<<< orphan*/  absbit; int /*<<< orphan*/  keybit; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev,
		struct hid_input *hidinput)
{
	struct input_dev *input = hidinput->input;

	/*
	 * ELO devices have one Button usage in GenDesk field, which makes
	 * hid-input map it to BTN_LEFT; that confuses userspace, which then
	 * considers the device to be a mouse/touchpad instead of touchscreen.
	 */
	FUNC0(BTN_LEFT, input->keybit);
	FUNC2(BTN_TOUCH, input->keybit);
	FUNC2(ABS_PRESSURE, input->absbit);
	FUNC1(input, ABS_PRESSURE, 0, 256, 0, 0);

	return 0;
}