#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct led_classdev {int dummy; } ;
struct blinkm_led {TYPE_1__* i2c_client; } ;
struct blinkm_data {void* next_red; void* next_green; void* next_blue; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLM_GO_RGB ; 
#define  BLUE 130 
 int EINVAL ; 
#define  GREEN 129 
#define  RED 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct blinkm_led* FUNC1 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct blinkm_data* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct led_classdev *led_cdev,
				 enum led_brightness value, int color)
{
	/* led_brightness is 0, 127 or 255 - we just use it here as-is */
	struct blinkm_led *led = FUNC1(led_cdev);
	struct blinkm_data *data = FUNC4(led->i2c_client);

	switch (color) {
	case RED:
		/* bail out if there's no change */
		if (data->next_red == (u8) value)
			return 0;
		data->next_red = (u8) value;
		break;
	case GREEN:
		/* bail out if there's no change */
		if (data->next_green == (u8) value)
			return 0;
		data->next_green = (u8) value;
		break;
	case BLUE:
		/* bail out if there's no change */
		if (data->next_blue == (u8) value)
			return 0;
		data->next_blue = (u8) value;
		break;

	default:
		FUNC3(&led->i2c_client->dev, "BlinkM: unknown color.\n");
		return -EINVAL;
	}

	FUNC0(led->i2c_client, BLM_GO_RGB);
	FUNC2(&led->i2c_client->dev,
			"# DONE # next_red = %d, next_green = %d,"
			" next_blue = %d\n",
			data->next_red, data->next_green,
			data->next_blue);
	return 0;
}