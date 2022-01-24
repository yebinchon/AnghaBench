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
typedef  int u8 ;
struct lm8323_platform_data {int size_x; int size_y; scalar_t__ repeat; int /*<<< orphan*/ * keymap; scalar_t__ name; int /*<<< orphan*/ * pwm_names; int /*<<< orphan*/  active_time; int /*<<< orphan*/  debounce_time; } ;
struct lm8323_chip {int size_x; int size_y; int kp_enabled; TYPE_1__* pwm; int /*<<< orphan*/ * keymap; int /*<<< orphan*/  phys; int /*<<< orphan*/  active_time; int /*<<< orphan*/  debounce_time; int /*<<< orphan*/  lock; struct input_dev* idev; struct i2c_client* client; } ;
struct input_dev {char* name; int* evbit; int* mscbit; int* keybit; int /*<<< orphan*/  phys; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; scalar_t__ enabled; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_NOINIT ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  LM8323_CMD_READ_INT ; 
 int LM8323_KEYMAP_SIZE ; 
 int LM8323_NUM_PWMS ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  dev_attr_disable_kp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct lm8323_platform_data* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct lm8323_chip*) ; 
 int FUNC13 (struct lm8323_chip*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct input_dev*) ; 
 int FUNC16 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC18 (struct lm8323_chip*) ; 
 struct lm8323_chip* FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct lm8323_chip*) ; 
 int /*<<< orphan*/  lm8323_irq ; 
 int FUNC22 (struct lm8323_chip*,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC23 (struct lm8323_chip*,int*) ; 
 int /*<<< orphan*/  FUNC24 (struct lm8323_chip*) ; 
 unsigned long FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct lm8323_chip*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,char*,char*) ; 
 scalar_t__ FUNC30 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC31(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	struct lm8323_platform_data *pdata = FUNC5(&client->dev);
	struct input_dev *idev;
	struct lm8323_chip *lm;
	int pwm;
	int i, err;
	unsigned long tmo;
	u8 data[2];

	if (!pdata || !pdata->size_x || !pdata->size_y) {
		FUNC4(&client->dev, "missing platform_data\n");
		return -EINVAL;
	}

	if (pdata->size_x > 8) {
		FUNC4(&client->dev, "invalid x size %d specified\n",
			pdata->size_x);
		return -EINVAL;
	}

	if (pdata->size_y > 12) {
		FUNC4(&client->dev, "invalid y size %d specified\n",
			pdata->size_y);
		return -EINVAL;
	}

	lm = FUNC19(sizeof *lm, GFP_KERNEL);
	idev = FUNC14();
	if (!lm || !idev) {
		err = -ENOMEM;
		goto fail1;
	}

	lm->client = client;
	lm->idev = idev;
	FUNC27(&lm->lock);

	lm->size_x = pdata->size_x;
	lm->size_y = pdata->size_y;
	FUNC7(&client->dev, "Keypad size: %d x %d\n",
		 lm->size_x, lm->size_y);

	lm->debounce_time = pdata->debounce_time;
	lm->active_time = pdata->active_time;

	FUNC24(lm);

	/* Nothing's set up to service the IRQ yet, so just spin for max.
	 * 100ms until we can configure. */
	tmo = jiffies + FUNC25(100);
	while (FUNC22(lm, LM8323_CMD_READ_INT, data, 1) == 1) {
		if (data[0] & INT_NOINIT)
			break;

		if (FUNC30(jiffies, tmo)) {
			FUNC4(&client->dev,
				"timeout waiting for initialisation\n");
			break;
		}

		FUNC26(1);
	}

	FUNC21(lm);

	/* If a true probe check the device */
	if (FUNC23(lm, data) != 0) {
		FUNC4(&client->dev, "device not found\n");
		err = -ENODEV;
		goto fail1;
	}

	for (pwm = 0; pwm < LM8323_NUM_PWMS; pwm++) {
		err = FUNC13(lm, pwm + 1, &client->dev,
			       pdata->pwm_names[pwm]);
		if (err < 0)
			goto fail2;
	}

	lm->kp_enabled = true;
	err = FUNC8(&client->dev, &dev_attr_disable_kp);
	if (err < 0)
		goto fail2;

	idev->name = pdata->name ? : "LM8323 keypad";
	FUNC29(lm->phys, sizeof(lm->phys),
		 "%s/input-kp", FUNC6(&client->dev));
	idev->phys = lm->phys;

	idev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_MSC);
	FUNC2(MSC_SCAN, idev->mscbit);
	for (i = 0; i < LM8323_KEYMAP_SIZE; i++) {
		FUNC2(pdata->keymap[i], idev->keybit);
		lm->keymap[i] = pdata->keymap[i];
	}
	FUNC1(KEY_RESERVED, idev->keybit);

	if (pdata->repeat)
		FUNC2(EV_REP, idev->evbit);

	err = FUNC16(idev);
	if (err) {
		FUNC3(&client->dev, "error registering input device\n");
		goto fail3;
	}

	err = FUNC28(client->irq, NULL, lm8323_irq,
			  IRQF_TRIGGER_LOW|IRQF_ONESHOT, "lm8323", lm);
	if (err) {
		FUNC4(&client->dev, "could not get IRQ %d\n", client->irq);
		goto fail4;
	}

	FUNC12(client, lm);

	FUNC9(&client->dev, 1);
	FUNC11(client->irq);

	return 0;

fail4:
	FUNC17(idev);
	idev = NULL;
fail3:
	FUNC10(&client->dev, &dev_attr_disable_kp);
fail2:
	while (--pwm >= 0)
		if (lm->pwm[pwm].enabled)
			FUNC20(&lm->pwm[pwm].cdev);
fail1:
	FUNC15(idev);
	FUNC18(lm);
	return err;
}