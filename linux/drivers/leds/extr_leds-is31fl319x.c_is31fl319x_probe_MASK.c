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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  brightness_set_blocking; } ;
struct is31fl319x_led {scalar_t__ max_microamp; TYPE_2__ cdev; struct is31fl319x_chip* chip; scalar_t__ configured; } ;
struct is31fl319x_chip {int /*<<< orphan*/  lock; struct is31fl319x_led* leds; TYPE_1__* cdef; int /*<<< orphan*/  audio_gain_db; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_3__ {int num_leds; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  IS31FL319X_CONFIG2 ; 
 scalar_t__ IS31FL319X_CURRENT_MAX ; 
 int /*<<< orphan*/  IS31FL319X_RESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct is31fl319x_chip* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct is31fl319x_chip*) ; 
 int /*<<< orphan*/  is31fl319x_brightness_set ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,scalar_t__) ; 
 int FUNC10 (struct device*,struct is31fl319x_chip*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regmap_config ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct is31fl319x_chip *is31;
	struct device *dev = &client->dev;
	int err;
	int i = 0;
	u32 aggregated_led_microamp = IS31FL319X_CURRENT_MAX;

	if (!FUNC6(client->adapter, I2C_FUNC_I2C))
		return -EIO;

	is31 = FUNC3(&client->dev, sizeof(*is31), GFP_KERNEL);
	if (!is31)
		return -ENOMEM;

	FUNC12(&is31->lock);

	err = FUNC10(&client->dev, is31);
	if (err)
		goto free_mutex;

	is31->client = client;
	is31->regmap = FUNC5(client, &regmap_config);
	if (FUNC0(is31->regmap)) {
		FUNC2(&client->dev, "failed to allocate register map\n");
		err = FUNC1(is31->regmap);
		goto free_mutex;
	}

	FUNC7(client, is31);

	/* check for write-reply from chip (we can't read any registers) */
	err = FUNC13(is31->regmap, IS31FL319X_RESET, 0x00);
	if (err < 0) {
		FUNC2(&client->dev, "no response from chip write: err = %d\n",
			err);
		err = -EIO; /* does not answer */
		goto free_mutex;
	}

	/*
	 * Kernel conventions require per-LED led-max-microamp property.
	 * But the chip does not allow to limit individual LEDs.
	 * So we take minimum from all subnodes for safety of hardware.
	 */
	for (i = 0; i < is31->cdef->num_leds; i++)
		if (is31->leds[i].configured &&
		    is31->leds[i].max_microamp < aggregated_led_microamp)
			aggregated_led_microamp = is31->leds[i].max_microamp;

	FUNC13(is31->regmap, IS31FL319X_CONFIG2,
		     FUNC9(dev, aggregated_led_microamp) |
		     FUNC8(is31->audio_gain_db));

	for (i = 0; i < is31->cdef->num_leds; i++) {
		struct is31fl319x_led *led = &is31->leds[i];

		if (!led->configured)
			continue;

		led->chip = is31;
		led->cdev.brightness_set_blocking = is31fl319x_brightness_set;

		err = FUNC4(&client->dev, &led->cdev);
		if (err < 0)
			goto free_mutex;
	}

	return 0;

free_mutex:
	FUNC11(&is31->lock);
	return err;
}