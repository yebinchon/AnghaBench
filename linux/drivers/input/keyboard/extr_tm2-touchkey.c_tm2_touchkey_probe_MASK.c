#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  (* brightness_set_blocking ) (TYPE_2__*,void*) ;void* max_brightness; void* brightness; void* name; } ;
struct tm2_touchkey_data {int num_keycodes; TYPE_2__ led_dev; TYPE_4__* variant; TYPE_6__* input_dev; TYPE_3__* keycodes; TYPE_3__* regulators; int /*<<< orphan*/  vdd; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_26__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_5__ dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_22__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_27__ {TYPE_1__ id; void* name; } ;
struct TYPE_25__ {scalar_t__ fixed_regulator; } ;
struct TYPE_24__ {char* supply; int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 TYPE_3__ KEY_BACK ; 
 TYPE_3__ KEY_PHONE ; 
 void* LED_ON ; 
 void* TM2_TOUCHKEY_DEV_NAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,...) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,struct tm2_touchkey_data*) ; 
 TYPE_6__* FUNC3 (TYPE_5__*) ; 
 struct tm2_touchkey_data* FUNC4 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct tm2_touchkey_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct tm2_touchkey_data*) ; 
 int FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__) ; 
 TYPE_4__* FUNC12 (TYPE_5__*) ; 
 int FUNC13 (struct device_node*,char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tm2_touchkey_irq_handler ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  tm2_touchkey_power_disable ; 
 int FUNC15 (struct tm2_touchkey_data*) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct device_node *np = client->dev.of_node;
	struct tm2_touchkey_data *touchkey;
	int error;
	int i;

	if (!FUNC8(client->adapter,
			I2C_FUNC_SMBUS_BYTE | I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC1(&client->dev, "incompatible I2C adapter\n");
		return -EIO;
	}

	touchkey = FUNC4(&client->dev, sizeof(*touchkey), GFP_KERNEL);
	if (!touchkey)
		return -ENOMEM;

	touchkey->client = client;
	FUNC9(client, touchkey);

	touchkey->variant = FUNC12(&client->dev);

	touchkey->regulators[0].supply = "vcc";
	touchkey->regulators[1].supply = "vdd";
	error = FUNC6(&client->dev,
					FUNC0(touchkey->regulators),
					touchkey->regulators);
	if (error) {
		FUNC1(&client->dev, "failed to get regulators: %d\n", error);
		return error;
	}

	/* Save VDD for easy access */
	touchkey->vdd = touchkey->regulators[1].consumer;

	touchkey->num_keycodes = FUNC13(np,
					"linux,keycodes", touchkey->keycodes, 0,
					FUNC0(touchkey->keycodes));
	if (touchkey->num_keycodes <= 0) {
		/* default keycodes */
		touchkey->keycodes[0] = KEY_PHONE;
		touchkey->keycodes[1] = KEY_BACK;
		touchkey->num_keycodes = 2;
	}

	error = FUNC15(touchkey);
	if (error) {
		FUNC1(&client->dev, "failed to power up device: %d\n", error);
		return error;
	}

	error = FUNC2(&client->dev,
					 tm2_touchkey_power_disable, touchkey);
	if (error) {
		FUNC1(&client->dev,
			"failed to install poweroff handler: %d\n", error);
		return error;
	}

	/* input device */
	touchkey->input_dev = FUNC3(&client->dev);
	if (!touchkey->input_dev) {
		FUNC1(&client->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	touchkey->input_dev->name = TM2_TOUCHKEY_DEV_NAME;
	touchkey->input_dev->id.bustype = BUS_I2C;

	for (i = 0; i < touchkey->num_keycodes; i++)
		FUNC11(touchkey->input_dev, EV_KEY,
				     touchkey->keycodes[i]);

	error = FUNC10(touchkey->input_dev);
	if (error) {
		FUNC1(&client->dev,
			"failed to register input device: %d\n", error);
		return error;
	}

	error = FUNC7(&client->dev, client->irq,
					  NULL, tm2_touchkey_irq_handler,
					  IRQF_ONESHOT,
					  TM2_TOUCHKEY_DEV_NAME, touchkey);
	if (error) {
		FUNC1(&client->dev,
			"failed to request threaded irq: %d\n", error);
		return error;
	}

	/* led device */
	touchkey->led_dev.name = TM2_TOUCHKEY_DEV_NAME;
	touchkey->led_dev.brightness = LED_ON;
	touchkey->led_dev.max_brightness = LED_ON;
	touchkey->led_dev.brightness_set_blocking =
					tm2_touchkey_led_brightness_set;

	error = FUNC5(&client->dev, &touchkey->led_dev);
	if (error) {
		FUNC1(&client->dev,
			"failed to register touchkey led: %d\n", error);
		return error;
	}

	if (touchkey->variant->fixed_regulator)
		FUNC14(&touchkey->led_dev, LED_ON);

	return 0;
}