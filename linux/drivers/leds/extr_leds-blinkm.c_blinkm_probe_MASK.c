#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {int addr; TYPE_3__ dev; TYPE_1__* adapter; } ;
struct TYPE_8__ {int max_brightness; char* name; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  flags; } ;
struct blinkm_led {int id; TYPE_2__ led_cdev; struct i2c_client* i2c_client; } ;
struct blinkm_data {int i2c_addr; int fw_ver; int script_id; struct blinkm_led* blinkm_leds; int /*<<< orphan*/  update_lock; struct i2c_client* i2c_client; } ;
typedef  int /*<<< orphan*/  blinkm_led_name ;
struct TYPE_7__ {int nr; } ;

/* Variables and functions */
#define  BLUE 130 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  GREEN 129 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
#define  RED 128 
 int /*<<< orphan*/  blinkm_group ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  blinkm_led_blue_set ; 
 int /*<<< orphan*/  blinkm_led_green_set ; 
 int /*<<< orphan*/  blinkm_led_red_set ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,...) ; 
 struct blinkm_data* FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct blinkm_data*) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct blinkm_data *data;
	struct blinkm_led *led[3];
	int err, i;
	char blinkm_led_name[28];

	data = FUNC2(&client->dev,
			sizeof(struct blinkm_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	data->i2c_addr = 0x08;
	/* i2c addr  - use fake addr of 0x08 initially (real is 0x09) */
	data->fw_ver = 0xfe;
	/* firmware version - use fake until we read real value
	 * (currently broken - BlinkM confused!) */
	data->script_id = 0x01;
	data->i2c_client = client;

	FUNC3(client, data);
	FUNC6(&data->update_lock);

	/* Register sysfs hooks */
	err = FUNC8(&client->dev.kobj, &blinkm_group);
	if (err < 0) {
		FUNC1(&client->dev, "couldn't register sysfs group\n");
		goto exit;
	}

	for (i = 0; i < 3; i++) {
		/* RED = 0, GREEN = 1, BLUE = 2 */
		led[i] = &data->blinkm_leds[i];
		led[i]->i2c_client = client;
		led[i]->id = i;
		led[i]->led_cdev.max_brightness = 255;
		led[i]->led_cdev.flags = LED_CORE_SUSPENDRESUME;
		switch (i) {
		case RED:
			FUNC7(blinkm_led_name, sizeof(blinkm_led_name),
					 "blinkm-%d-%d-red",
					 client->adapter->nr,
					 client->addr);
			led[i]->led_cdev.name = blinkm_led_name;
			led[i]->led_cdev.brightness_set_blocking =
							blinkm_led_red_set;
			err = FUNC4(&client->dev,
						    &led[i]->led_cdev);
			if (err < 0) {
				FUNC1(&client->dev,
					"couldn't register LED %s\n",
					led[i]->led_cdev.name);
				goto failred;
			}
			break;
		case GREEN:
			FUNC7(blinkm_led_name, sizeof(blinkm_led_name),
					 "blinkm-%d-%d-green",
					 client->adapter->nr,
					 client->addr);
			led[i]->led_cdev.name = blinkm_led_name;
			led[i]->led_cdev.brightness_set_blocking =
							blinkm_led_green_set;
			err = FUNC4(&client->dev,
						    &led[i]->led_cdev);
			if (err < 0) {
				FUNC1(&client->dev,
					"couldn't register LED %s\n",
					led[i]->led_cdev.name);
				goto failgreen;
			}
			break;
		case BLUE:
			FUNC7(blinkm_led_name, sizeof(blinkm_led_name),
					 "blinkm-%d-%d-blue",
					 client->adapter->nr,
					 client->addr);
			led[i]->led_cdev.name = blinkm_led_name;
			led[i]->led_cdev.brightness_set_blocking =
							blinkm_led_blue_set;
			err = FUNC4(&client->dev,
						    &led[i]->led_cdev);
			if (err < 0) {
				FUNC1(&client->dev,
					"couldn't register LED %s\n",
					led[i]->led_cdev.name);
				goto failblue;
			}
			break;
		}		/* end switch */
	}			/* end for */

	/* Initialize the blinkm */
	FUNC0(client);

	return 0;

failblue:
	FUNC5(&led[GREEN]->led_cdev);

failgreen:
	FUNC5(&led[RED]->led_cdev);

failred:
	FUNC9(&client->dev.kobj, &blinkm_group);
exit:
	return err;
}