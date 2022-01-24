#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct qt1050_priv {struct input_dev* input; struct regmap* regmap; int /*<<< orphan*/ * keycodes; TYPE_3__* keys; struct i2c_client* client; } ;
struct TYPE_6__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_5__ {struct device* parent; } ;
struct input_dev {char* name; int keycodesize; unsigned int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/ * keycode; TYPE_2__ id; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  irq; TYPE_4__* adapter; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  QT1050_DET_STATUS ; 
 unsigned int QT1050_MAX_KEYS ; 
 int /*<<< orphan*/  QT1050_RESET_TIME ; 
 int /*<<< orphan*/  QT1050_RES_CAL ; 
 int QT1050_RES_CAL_CALIBRATE ; 
 int QT1050_RES_CAL_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct input_dev* FUNC5 (struct device*) ; 
 struct qt1050_priv* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct qt1050_priv*) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct qt1050_priv*) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct qt1050_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct qt1050_priv*) ; 
 int /*<<< orphan*/  qt1050_irq_threaded ; 
 int FUNC15 (struct qt1050_priv*) ; 
 int /*<<< orphan*/  qt1050_regmap_config ; 
 int FUNC16 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC17 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int FUNC18 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client)
{
	struct qt1050_priv *ts;
	struct input_dev *input;
	struct device *dev = &client->dev;
	struct regmap *map;
	unsigned int status, i;
	int err;

	/* Check basic functionality */
	err = FUNC9(client->adapter, I2C_FUNC_SMBUS_BYTE);
	if (!err) {
		FUNC4(&client->dev, "%s adapter not supported\n",
			FUNC3(&client->adapter->dev));
		return -ENODEV;
	}

	if (!client->irq) {
		FUNC4(dev, "assign a irq line to this device\n");
		return -EINVAL;
	}

	ts = FUNC6(dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	input = FUNC5(dev);
	if (!input)
		return -ENOMEM;

	map = FUNC7(client, &qt1050_regmap_config);
	if (FUNC0(map))
		return FUNC1(map);

	ts->client = client;
	ts->input = input;
	ts->regmap = map;

	FUNC10(client, ts);

	/* Identify the qt1050 chip */
	if (!FUNC14(ts))
		return -ENODEV;

	/* Get pdata */
	err = FUNC15(ts);
	if (err) {
		FUNC4(dev, "Failed to parse firmware: %d\n", err);
		return err;
	}

	input->name = "AT42QT1050 QTouch Sensor";
	input->dev.parent = &client->dev;
	input->id.bustype = BUS_I2C;

	/* Add the keycode */
	input->keycode = ts->keycodes;
	input->keycodesize = sizeof(ts->keycodes[0]);
	input->keycodemax = QT1050_MAX_KEYS;

	FUNC2(EV_KEY, input->evbit);
	for (i = 0; i < QT1050_MAX_KEYS; i++) {
		ts->keycodes[i] = ts->keys[i].keycode;
		FUNC2(ts->keycodes[i], input->keybit);
	}

	/* Trigger re-calibration */
	err = FUNC18(ts->regmap, QT1050_RES_CAL, 0x7f,
				 QT1050_RES_CAL_CALIBRATE);
	if (err) {
		FUNC4(dev, "Trigger calibration failed: %d\n", err);
		return err;
	}
	err = FUNC17(ts->regmap, QT1050_DET_STATUS, status,
				 status >> 7 == 1, 10000, 200000);
	if (err) {
		FUNC4(dev, "Calibration failed: %d\n", err);
		return err;
	}

	/* Soft reset to set defaults */
	err = FUNC18(ts->regmap, QT1050_RES_CAL,
				 QT1050_RES_CAL_RESET, QT1050_RES_CAL_RESET);
	if (err) {
		FUNC4(dev, "Trigger soft reset failed: %d\n", err);
		return err;
	}
	FUNC12(QT1050_RESET_TIME);

	/* Set pdata */
	err = FUNC13(ts);
	if (err) {
		FUNC4(dev, "Failed to set firmware data: %d\n", err);
		return err;
	}

	err = FUNC8(dev, client->irq, NULL,
					qt1050_irq_threaded, IRQF_ONESHOT,
					"qt1050", ts);
	if (err) {
		FUNC4(&client->dev, "Failed to request irq: %d\n", err);
		return err;
	}

	/* Clear #CHANGE line */
	err = FUNC16(ts->regmap, QT1050_DET_STATUS, &status);
	if (err) {
		FUNC4(dev, "Failed to clear #CHANGE line level: %d\n", err);
		return err;
	}

	/* Register the input device */
	err = FUNC11(ts->input);
	if (err) {
		FUNC4(&client->dev, "Failed to register input device: %d\n",
			err);
		return err;
	}

	return 0;
}