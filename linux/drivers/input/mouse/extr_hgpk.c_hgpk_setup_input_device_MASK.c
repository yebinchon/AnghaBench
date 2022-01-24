#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  relbit; TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
typedef  enum hgpk_mode { ____Placeholder_hgpk_mode } hgpk_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
#define  HGPK_MODE_GLIDESENSOR 130 
#define  HGPK_MODE_MOUSE 129 
#define  HGPK_MODE_PENTABLET 128 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct input_dev *input,
				    struct input_dev *old_input,
				    enum hgpk_mode mode)
{
	if (old_input) {
		input->name = old_input->name;
		input->phys = old_input->phys;
		input->id = old_input->id;
		input->dev.parent = old_input->dev.parent;
	}

	FUNC4(input->evbit, 0, sizeof(input->evbit));
	FUNC4(input->relbit, 0, sizeof(input->relbit));
	FUNC4(input->keybit, 0, sizeof(input->keybit));

	/* All modes report left and right buttons */
	FUNC1(EV_KEY, input->evbit);
	FUNC1(BTN_LEFT, input->keybit);
	FUNC1(BTN_RIGHT, input->keybit);

	switch (mode) {
	case HGPK_MODE_MOUSE:
		FUNC1(EV_REL, input->evbit);
		FUNC1(REL_X, input->relbit);
		FUNC1(REL_Y, input->relbit);
		break;

	case HGPK_MODE_GLIDESENSOR:
		FUNC1(BTN_TOUCH, input->keybit);
		FUNC1(BTN_TOOL_FINGER, input->keybit);

		FUNC1(EV_ABS, input->evbit);

		/* GlideSensor has pressure sensor, PenTablet does not */
		FUNC3(input, ABS_PRESSURE, 0, 15, 0, 0);

		/* From device specs */
		FUNC3(input, ABS_X, 0, 399, 0, 0);
		FUNC3(input, ABS_Y, 0, 290, 0, 0);

		/* Calculated by hand based on usable size (52mm x 38mm) */
		FUNC2(input, ABS_X, 8);
		FUNC2(input, ABS_Y, 8);
		break;

	case HGPK_MODE_PENTABLET:
		FUNC1(BTN_TOUCH, input->keybit);
		FUNC1(BTN_TOOL_FINGER, input->keybit);

		FUNC1(EV_ABS, input->evbit);

		/* From device specs */
		FUNC3(input, ABS_X, 0, 999, 0, 0);
		FUNC3(input, ABS_Y, 5, 239, 0, 0);

		/* Calculated by hand based on usable size (156mm x 38mm) */
		FUNC2(input, ABS_X, 6);
		FUNC2(input, ABS_Y, 8);
		break;

	default:
		FUNC0();
	}
}