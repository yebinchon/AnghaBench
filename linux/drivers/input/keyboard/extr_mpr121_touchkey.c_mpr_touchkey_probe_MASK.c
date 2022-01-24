#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regulator {int dummy; } ;
struct mpr121_touchkey {int keycount; int /*<<< orphan*/ * keycodes; struct input_dev* input_dev; struct i2c_client* client; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int keycodesize; int keycodemax; int /*<<< orphan*/ * keycode; int /*<<< orphan*/  evbit; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct device {TYPE_3__* driver; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (struct regulator*) ; 
 int MPR121_MAX_KEY_COUNT ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__) ; 
 int FUNC5 (struct device*,char*) ; 
 scalar_t__ FUNC6 (struct device*,char*) ; 
 int FUNC7 (struct device*,char*,int /*<<< orphan*/ *,int) ; 
 struct input_dev* FUNC8 (struct device*) ; 
 struct mpr121_touchkey* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mpr121_touchkey*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct mpr121_touchkey*) ; 
 int FUNC12 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mpr121_touchkey*,struct i2c_client*,int) ; 
 struct regulator* FUNC15 (struct device*) ; 
 int /*<<< orphan*/  mpr_touchkey_interrupt ; 
 int FUNC16 (struct regulator*) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct regulator *vdd_supply;
	int vdd_uv;
	struct mpr121_touchkey *mpr121;
	struct input_dev *input_dev;
	int error;
	int i;

	if (!client->irq) {
		FUNC3(dev, "irq number should not be zero\n");
		return -EINVAL;
	}

	vdd_supply = FUNC15(dev);
	if (FUNC0(vdd_supply))
		return FUNC1(vdd_supply);

	vdd_uv = FUNC16(vdd_supply);

	mpr121 = FUNC9(dev, sizeof(*mpr121), GFP_KERNEL);
	if (!mpr121)
		return -ENOMEM;

	input_dev = FUNC8(dev);
	if (!input_dev)
		return -ENOMEM;

	mpr121->client = client;
	mpr121->input_dev = input_dev;
	mpr121->keycount = FUNC5(dev, "linux,keycodes");
	if (mpr121->keycount > MPR121_MAX_KEY_COUNT) {
		FUNC3(dev, "too many keys defined (%d)\n", mpr121->keycount);
		return -EINVAL;
	}

	error = FUNC7(dev, "linux,keycodes",
					       mpr121->keycodes,
					       mpr121->keycount);
	if (error) {
		FUNC3(dev,
			"failed to read linux,keycode property: %d\n", error);
		return error;
	}

	input_dev->name = "Freescale MPR121 Touchkey";
	input_dev->id.bustype = BUS_I2C;
	input_dev->dev.parent = dev;
	if (FUNC6(dev, "autorepeat"))
		FUNC2(EV_REP, input_dev->evbit);
	FUNC13(input_dev, EV_MSC, MSC_SCAN);

	input_dev->keycode = mpr121->keycodes;
	input_dev->keycodesize = sizeof(mpr121->keycodes[0]);
	input_dev->keycodemax = mpr121->keycount;

	for (i = 0; i < mpr121->keycount; i++)
		FUNC13(input_dev, EV_KEY, mpr121->keycodes[i]);

	error = FUNC14(mpr121, client, vdd_uv);
	if (error) {
		FUNC3(dev, "Failed to init register\n");
		return error;
	}

	error = FUNC10(dev, client->irq, NULL,
					  mpr_touchkey_interrupt,
					  IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					  dev->driver->name, mpr121);
	if (error) {
		FUNC3(dev, "Failed to register interrupt\n");
		return error;
	}

	error = FUNC12(input_dev);
	if (error)
		return error;

	FUNC11(client, mpr121);
	FUNC4(dev,
			FUNC6(dev, "wakeup-source"));

	return 0;
}