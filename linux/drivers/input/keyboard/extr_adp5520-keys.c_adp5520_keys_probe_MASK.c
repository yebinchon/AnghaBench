#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {scalar_t__ id; TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct input_dev {char* phys; int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/ * keycode; TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct adp5520_keys_platform_data {unsigned char rows_en_mask; unsigned char cols_en_mask; int keymapsize; scalar_t__ repeat; int /*<<< orphan*/  keymap; } ;
struct TYPE_11__ {int /*<<< orphan*/  notifier_call; } ;
struct adp5520_keys {TYPE_7__ notifier; int /*<<< orphan*/  master; int /*<<< orphan*/ * keycode; struct input_dev* input; } ;

/* Variables and functions */
 unsigned char ADP5520_C3_MODE ; 
 unsigned char ADP5520_COL_C3 ; 
 int /*<<< orphan*/  ADP5520_GPIO_CFG_1 ; 
 int /*<<< orphan*/  ADP5520_GPIO_PULLUP ; 
 int ADP5520_KP_IEN ; 
 int ADP5520_KR_IEN ; 
 int /*<<< orphan*/  ADP5520_LED_CONTROL ; 
 unsigned char ADP5520_R3_MODE ; 
 unsigned char ADP5520_ROW_R3 ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ ID_ADP5520 ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adp5520_keys_notifier ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 struct adp5520_keys_platform_data* FUNC5 (TYPE_3__*) ; 
 struct input_dev* FUNC6 (TYPE_3__*) ; 
 struct adp5520_keys* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct adp5520_keys*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct adp5520_keys_platform_data *pdata = FUNC5(&pdev->dev);
	struct input_dev *input;
	struct adp5520_keys *dev;
	int ret, i;
	unsigned char en_mask, ctl_mask = 0;

	if (pdev->id != ID_ADP5520) {
		FUNC4(&pdev->dev, "only ADP5520 supports Keypad\n");
		return -EINVAL;
	}

	if (!pdata) {
		FUNC4(&pdev->dev, "missing platform data\n");
		return -EINVAL;
	}

	if (!(pdata->rows_en_mask && pdata->cols_en_mask))
		return -EINVAL;

	dev = FUNC7(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		FUNC4(&pdev->dev, "failed to alloc memory\n");
		return -ENOMEM;
	}

	input = FUNC6(&pdev->dev);
	if (!input)
		return -ENOMEM;

	dev->master = pdev->dev.parent;
	dev->input = input;

	input->name = pdev->name;
	input->phys = "adp5520-keys/input0";
	input->dev.parent = &pdev->dev;

	input->id.bustype = BUS_I2C;
	input->id.vendor = 0x0001;
	input->id.product = 0x5520;
	input->id.version = 0x0001;

	input->keycodesize = sizeof(dev->keycode[0]);
	input->keycodemax = pdata->keymapsize;
	input->keycode = dev->keycode;

	FUNC9(dev->keycode, pdata->keymap,
		pdata->keymapsize * input->keycodesize);

	/* setup input device */
	FUNC1(EV_KEY, input->evbit);

	if (pdata->repeat)
		FUNC1(EV_REP, input->evbit);

	for (i = 0; i < input->keycodemax; i++)
		FUNC1(dev->keycode[i], input->keybit);
	FUNC0(KEY_RESERVED, input->keybit);

	ret = FUNC8(input);
	if (ret) {
		FUNC4(&pdev->dev, "unable to register input device\n");
		return ret;
	}

	en_mask = pdata->rows_en_mask | pdata->cols_en_mask;

	ret = FUNC3(dev->master, ADP5520_GPIO_CFG_1, en_mask);

	if (en_mask & ADP5520_COL_C3)
		ctl_mask |= ADP5520_C3_MODE;

	if (en_mask & ADP5520_ROW_R3)
		ctl_mask |= ADP5520_R3_MODE;

	if (ctl_mask)
		ret |= FUNC3(dev->master, ADP5520_LED_CONTROL,
			ctl_mask);

	ret |= FUNC3(dev->master, ADP5520_GPIO_PULLUP,
		pdata->rows_en_mask);

	if (ret) {
		FUNC4(&pdev->dev, "failed to write\n");
		return -EIO;
	}

	dev->notifier.notifier_call = adp5520_keys_notifier;
	ret = FUNC2(dev->master, &dev->notifier,
			ADP5520_KP_IEN | ADP5520_KR_IEN);
	if (ret) {
		FUNC4(&pdev->dev, "failed to register notifier\n");
		return ret;
	}

	FUNC10(pdev, dev);
	return 0;
}