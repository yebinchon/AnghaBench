#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int num_leds; TYPE_1__* leds; } ;
struct tca6507_platform_data {TYPE_2__ leds; } ;
struct TYPE_7__ {scalar_t__ name; int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  default_trigger; } ;
struct tca6507_led {int num; int bank; TYPE_3__ led_cdev; struct tca6507_chip* chip; } ;
struct tca6507_chip {int reg_set; struct tca6507_led* leds; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  default_trigger; scalar_t__ name; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tca6507_platform_data*) ; 
 int NUM_LEDS ; 
 int FUNC2 (struct tca6507_platform_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct tca6507_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 struct tca6507_chip* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct tca6507_chip*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tca6507_blink_set ; 
 int /*<<< orphan*/  tca6507_brightness_set ; 
 struct tca6507_platform_data* FUNC12 (struct i2c_client*) ; 
 int FUNC13 (struct i2c_client*,struct tca6507_chip*,struct tca6507_platform_data*) ; 
 int /*<<< orphan*/  tca6507_work ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct tca6507_chip *tca;
	struct i2c_adapter *adapter;
	struct tca6507_platform_data *pdata;
	int err;
	int i = 0;

	adapter = client->adapter;
	pdata = FUNC4(&client->dev);

	if (!FUNC6(adapter, I2C_FUNC_I2C))
		return -EIO;

	if (!pdata || pdata->leds.num_leds != NUM_LEDS) {
		pdata = FUNC12(client);
		if (FUNC1(pdata)) {
			FUNC3(&client->dev, "Need %d entries in platform-data list\n",
				NUM_LEDS);
			return FUNC2(pdata);
		}
	}
	tca = FUNC5(&client->dev, sizeof(*tca), GFP_KERNEL);
	if (!tca)
		return -ENOMEM;

	tca->client = client;
	FUNC0(&tca->work, tca6507_work);
	FUNC11(&tca->lock);
	FUNC7(client, tca);

	for (i = 0; i < NUM_LEDS; i++) {
		struct tca6507_led *l = tca->leds + i;

		l->chip = tca;
		l->num = i;
		if (pdata->leds.leds[i].name && !pdata->leds.leds[i].flags) {
			l->led_cdev.name = pdata->leds.leds[i].name;
			l->led_cdev.default_trigger
				= pdata->leds.leds[i].default_trigger;
			l->led_cdev.brightness_set = tca6507_brightness_set;
			l->led_cdev.blink_set = tca6507_blink_set;
			l->bank = -1;
			err = FUNC8(&client->dev,
						    &l->led_cdev);
			if (err < 0)
				goto exit;
		}
	}
	err = FUNC13(client, tca, pdata);
	if (err)
		goto exit;
	/* set all registers to known state - zero */
	tca->reg_set = 0x7f;
	FUNC10(&tca->work);

	return 0;
exit:
	while (i--) {
		if (tca->leds[i].led_cdev.name)
			FUNC9(&tca->leds[i].led_cdev);
	}
	return err;
}