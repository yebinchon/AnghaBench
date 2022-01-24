#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct ims_pcu_gamepad {int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct input_dev* input; } ;
struct ims_pcu {int device_no; struct ims_pcu_gamepad* gamepad; int /*<<< orphan*/  dev; TYPE_2__* ctrl_intf; int /*<<< orphan*/  udev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ims_pcu_gamepad*) ; 
 struct ims_pcu_gamepad* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct ims_pcu *pcu)
{
	struct ims_pcu_gamepad *gamepad;
	struct input_dev *input;
	int error;

	gamepad = FUNC7(sizeof(struct ims_pcu_gamepad), GFP_KERNEL);
	input = FUNC2();
	if (!gamepad || !input) {
		FUNC1(pcu->dev,
			"Not enough memory for gamepad device\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	gamepad->input = input;

	FUNC8(gamepad->name, sizeof(gamepad->name),
		 "IMS PCU#%d Gamepad Interface", pcu->device_no);

	FUNC10(pcu->udev, gamepad->phys, sizeof(gamepad->phys));
	FUNC9(gamepad->phys, "/input1", sizeof(gamepad->phys));

	input->name = gamepad->name;
	input->phys = gamepad->phys;
	FUNC11(pcu->udev, &input->id);
	input->dev.parent = &pcu->ctrl_intf->dev;

	FUNC0(EV_KEY, input->evbit);
	FUNC0(BTN_A, input->keybit);
	FUNC0(BTN_B, input->keybit);
	FUNC0(BTN_X, input->keybit);
	FUNC0(BTN_Y, input->keybit);
	FUNC0(BTN_START, input->keybit);
	FUNC0(BTN_SELECT, input->keybit);

	FUNC0(EV_ABS, input->evbit);
	FUNC5(input, ABS_X, -1, 1, 0, 0);
	FUNC5(input, ABS_Y, -1, 1, 0, 0);

	error = FUNC4(input);
	if (error) {
		FUNC1(pcu->dev,
			"Failed to register gamepad input device: %d\n",
			error);
		goto err_free_mem;
	}

	pcu->gamepad = gamepad;
	return 0;

err_free_mem:
	FUNC3(input);
	FUNC6(gamepad);
	return -ENOMEM;
}