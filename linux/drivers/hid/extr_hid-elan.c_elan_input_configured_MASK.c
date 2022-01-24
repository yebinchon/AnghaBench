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
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  propbit; int /*<<< orphan*/  keybit; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  uniq; int /*<<< orphan*/  phys; } ;
struct hid_input {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bus; int /*<<< orphan*/  uniq; int /*<<< orphan*/  phys; } ;
struct elan_drvdata {struct input_dev* input; int /*<<< orphan*/  res_y; int /*<<< orphan*/  res_x; int /*<<< orphan*/  max_y; int /*<<< orphan*/  max_x; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  ELAN_MAX_FINGERS ; 
 int /*<<< orphan*/  ELAN_MAX_PRESSURE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INPUT_MT_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_BUTTONPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*,int) ; 
 struct elan_drvdata* FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct hid_device*) ; 

__attribute__((used)) static int FUNC11(struct hid_device *hdev, struct hid_input *hi)
{
	int ret;
	struct input_dev *input;
	struct elan_drvdata *drvdata = FUNC4(hdev);

	if (FUNC10(hdev))
		return 0;

	ret = FUNC2(hdev);
	if (ret)
		return ret;

	input = FUNC1(&hdev->dev);
	if (!input)
		return -ENOMEM;

	input->name = "Elan Touchpad";
	input->phys = hdev->phys;
	input->uniq = hdev->uniq;
	input->id.bustype = hdev->bus;
	input->id.vendor  = hdev->vendor;
	input->id.product = hdev->product;
	input->id.version = hdev->version;
	input->dev.parent = &hdev->dev;

	FUNC9(input, ABS_MT_POSITION_X, 0, drvdata->max_x,
			     0, 0);
	FUNC9(input, ABS_MT_POSITION_Y, 0, drvdata->max_y,
			     0, 0);
	FUNC9(input, ABS_MT_PRESSURE, 0, ELAN_MAX_PRESSURE,
			     0, 0);

	FUNC0(BTN_LEFT, input->keybit);
	FUNC0(INPUT_PROP_BUTTONPAD, input->propbit);

	ret = FUNC7(input, ELAN_MAX_FINGERS, INPUT_MT_POINTER);
	if (ret) {
		FUNC3(hdev, "Failed to init elan MT slots: %d\n", ret);
		return ret;
	}

	FUNC5(input, ABS_X, drvdata->res_x);
	FUNC5(input, ABS_Y, drvdata->res_y);

	ret = FUNC8(input);
	if (ret) {
		FUNC3(hdev, "Failed to register elan input device: %d\n",
			ret);
		FUNC6(input);
		return ret;
	}

	drvdata->input = input;

	return 0;
}