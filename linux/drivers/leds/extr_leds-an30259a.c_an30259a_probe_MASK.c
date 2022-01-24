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
struct led_init_data {char* default_label; int /*<<< orphan*/  devicename; int /*<<< orphan*/  fwnode; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct an30259a {int num_leds; int /*<<< orphan*/  mutex; TYPE_2__* leds; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set_blocking; } ;
struct TYPE_4__ {TYPE_1__ cdev; int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN30259A_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  an30259a_blink_set ; 
 int /*<<< orphan*/  an30259a_brightness_set ; 
 int FUNC0 (struct i2c_client*,struct an30259a*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  an30259a_regmap_config ; 
 struct an30259a* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct led_init_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct an30259a*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct an30259a *chip;
	int i, err;

	chip = FUNC2(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	err = FUNC0(client, chip);
	if (err < 0)
		return err;

	FUNC7(&chip->mutex);
	chip->client = client;
	FUNC5(client, chip);

	chip->regmap = FUNC4(client, &an30259a_regmap_config);

	for (i = 0; i < chip->num_leds; i++) {
		struct led_init_data init_data = {};

		FUNC1(&chip->leds[i]);
		chip->leds[i].cdev.brightness_set_blocking =
			an30259a_brightness_set;
		chip->leds[i].cdev.blink_set = an30259a_blink_set;

		init_data.fwnode = chip->leds[i].fwnode;
		init_data.devicename = AN30259A_NAME;
		init_data.default_label = ":";

		err = FUNC3(&client->dev,
						 &chip->leds[i].cdev,
						 &init_data);
		if (err < 0)
			goto exit;
	}
	return 0;

exit:
	FUNC6(&chip->mutex);
	return err;
}