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
struct kp_data {scalar_t__* btncode; int /*<<< orphan*/  laststate; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct i2c_client* client; struct input_dev* idev; } ;
struct TYPE_2__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {scalar_t__* keycode; int keycodesize; int keycodemax; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  keybit; int /*<<< orphan*/ * evbit; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 char* DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ KEY_MAX ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kp_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct kp_data*) ; 
 scalar_t__ FUNC7 (struct i2c_client*,int) ; 
 struct input_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct kp_data*) ; 
 struct kp_data* FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__* pcf8574_kp_btncode ; 
 int /*<<< orphan*/  pcf8574_kp_irq_handler ; 
 int /*<<< orphan*/  FUNC13 (struct kp_data*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct kp_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client, const struct i2c_device_id *id)
{
	int i, ret;
	struct input_dev *idev;
	struct kp_data *lp;

	if (FUNC7(client, 240) < 0) {
		FUNC4(&client->dev, "probe: write fail\n");
		return -ENODEV;
	}

	lp = FUNC12(sizeof(*lp), GFP_KERNEL);
	if (!lp)
		return -ENOMEM;

	idev = FUNC8();
	if (!idev) {
		FUNC4(&client->dev, "Can't allocate input device\n");
		ret = -ENOMEM;
		goto fail_allocate;
	}

	lp->idev = idev;
	lp->client = client;

	idev->evbit[0] = FUNC1(EV_KEY);
	idev->keycode = lp->btncode;
	idev->keycodesize = sizeof(lp->btncode[0]);
	idev->keycodemax = FUNC0(lp->btncode);

	for (i = 0; i < FUNC0(pcf8574_kp_btncode); i++) {
		if (lp->btncode[i] <= KEY_MAX) {
			lp->btncode[i] = pcf8574_kp_btncode[i];
			FUNC3(lp->btncode[i], idev->keybit);
		}
	}
	FUNC2(KEY_RESERVED, idev->keybit);

	FUNC15(lp->name, DRV_NAME);
	FUNC15(lp->phys, "kp_data/input0");

	idev->name = lp->name;
	idev->phys = lp->phys;
	idev->id.bustype = BUS_I2C;
	idev->id.vendor = 0x0001;
	idev->id.product = 0x0001;
	idev->id.version = 0x0100;

	lp->laststate = FUNC13(lp);

	ret = FUNC14(client->irq, NULL, pcf8574_kp_irq_handler,
				   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				   DRV_NAME, lp);
	if (ret) {
		FUNC4(&client->dev, "IRQ %d is not free\n", client->irq);
		goto fail_free_device;
	}

	ret = FUNC10(idev);
	if (ret) {
		FUNC4(&client->dev, "input_register_device() failed\n");
		goto fail_free_irq;
	}

	FUNC6(client, lp);
	return 0;

 fail_free_irq:
	FUNC5(client->irq, lp);
 fail_free_device:
	FUNC9(idev);
 fail_allocate:
	FUNC11(lp);

	return ret;
}