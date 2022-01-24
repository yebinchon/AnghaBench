#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct bd2802_led_platform_data {int /*<<< orphan*/  reset_gpio; } ;
struct bd2802_led {struct i2c_client* client; int /*<<< orphan*/  rwsem; int /*<<< orphan*/  rgb_current; int /*<<< orphan*/  wave_pattern; struct bd2802_led_platform_data* pdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  BD2802_CURRENT_032 ; 
 int /*<<< orphan*/  BD2802_PATTERN_HALF ; 
 int /*<<< orphan*/  BD2802_REG_CLKSETUP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 TYPE_2__** bd2802_attributes ; 
 int FUNC1 (struct bd2802_led*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct bd2802_led_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 struct bd2802_led* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct bd2802_led *led;
	struct bd2802_led_platform_data *pdata;
	int ret, i;

	led = FUNC8(&client->dev, sizeof(struct bd2802_led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	led->client = client;
	pdata = led->pdata = FUNC4(&client->dev);
	FUNC11(client, led);

	/* Configure RESET GPIO (L: RESET, H: RESET cancel) */
	FUNC9(pdata->reset_gpio, GPIOF_OUT_INIT_HIGH, "RGB_RESETB");

	/* Tacss = min 0.1ms */
	FUNC13(100);

	/* Detect BD2802GU */
	ret = FUNC2(client, BD2802_REG_CLKSETUP, 0x00);
	if (ret < 0) {
		FUNC3(&client->dev, "failed to detect device\n");
		return ret;
	} else
		FUNC5(&client->dev, "return 0x%02x\n", ret);

	/* To save the power, reset BD2802 after detecting */
	FUNC10(led->pdata->reset_gpio, 0);

	/* Default attributes */
	led->wave_pattern = BD2802_PATTERN_HALF;
	led->rgb_current = BD2802_CURRENT_032;

	FUNC12(&led->rwsem);

	for (i = 0; i < FUNC0(bd2802_attributes); i++) {
		ret = FUNC6(&led->client->dev,
						bd2802_attributes[i]);
		if (ret) {
			FUNC3(&led->client->dev, "failed: sysfs file %s\n",
					bd2802_attributes[i]->attr.name);
			goto failed_unregister_dev_file;
		}
	}

	ret = FUNC1(led);
	if (ret < 0)
		goto failed_unregister_dev_file;

	return 0;

failed_unregister_dev_file:
	for (i--; i >= 0; i--)
		FUNC7(&led->client->dev, bd2802_attributes[i]);
	return ret;
}