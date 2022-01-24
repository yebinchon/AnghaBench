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
struct lp3944_platform_data {int leds_size; } ;
struct lp3944_data {TYPE_1__* leds; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  ldev; } ;

/* Variables and functions */
#define  LP3944_LED_TYPE_LED 130 
#define  LP3944_LED_TYPE_LED_INVERTED 129 
#define  LP3944_LED_TYPE_NONE 128 
 struct lp3944_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 struct lp3944_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct lp3944_platform_data *pdata = FUNC0(&client->dev);
	struct lp3944_data *data = FUNC1(client);
	int i;

	for (i = 0; i < pdata->leds_size; i++)
		switch (data->leds[i].type) {
		case LP3944_LED_TYPE_LED:
		case LP3944_LED_TYPE_LED_INVERTED:
			FUNC2(&data->leds[i].ldev);
			break;

		case LP3944_LED_TYPE_NONE:
		default:
			break;
		}

	return 0;
}