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
struct TYPE_4__ {int /*<<< orphan*/  brightness_get; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  brightness; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  name; } ;
struct stmfts_data {int /*<<< orphan*/  ledvdd; TYPE_2__ led_cdev; TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  LED_ON ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STMFTS_DEV_NAME ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stmfts_brightness_get ; 
 int /*<<< orphan*/  stmfts_brightness_set ; 

__attribute__((used)) static int FUNC5(struct stmfts_data *sdata)
{
	int err;

	/* get the regulator for powering the leds on */
	sdata->ledvdd = FUNC3(&sdata->client->dev, "ledvdd");
	if (FUNC0(sdata->ledvdd))
		return FUNC1(sdata->ledvdd);

	sdata->led_cdev.name = STMFTS_DEV_NAME;
	sdata->led_cdev.max_brightness = LED_ON;
	sdata->led_cdev.brightness = LED_OFF;
	sdata->led_cdev.brightness_set_blocking = stmfts_brightness_set;
	sdata->led_cdev.brightness_get = stmfts_brightness_get;

	err = FUNC2(&sdata->client->dev, &sdata->led_cdev);
	if (err) {
		FUNC4(sdata->ledvdd);
		return err;
	}

	return 0;
}