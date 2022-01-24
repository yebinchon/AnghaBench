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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int max_brightness; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  brightness; int /*<<< orphan*/  name; } ;
struct dac124s085_led {int id; TYPE_1__ ldev; int /*<<< orphan*/  name; int /*<<< orphan*/  mutex; struct spi_device* spi; } ;
struct dac124s085 {struct dac124s085_led* leds; } ;

/* Variables and functions */
 int FUNC0 (struct dac124s085_led*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  dac124s085_set_brightness ; 
 struct dac124s085* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,struct dac124s085*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct dac124s085	*dac;
	struct dac124s085_led	*led;
	int i, ret;

	dac = FUNC1(&spi->dev, sizeof(*dac), GFP_KERNEL);
	if (!dac)
		return -ENOMEM;

	spi->bits_per_word = 16;

	for (i = 0; i < FUNC0(dac->leds); i++) {
		led		= dac->leds + i;
		led->id		= i;
		led->spi	= spi;
		FUNC5(led->name, sizeof(led->name), "dac124s085-%d", i);
		FUNC4(&led->mutex);
		led->ldev.name = led->name;
		led->ldev.brightness = LED_OFF;
		led->ldev.max_brightness = 0xfff;
		led->ldev.brightness_set_blocking = dac124s085_set_brightness;
		ret = FUNC2(&spi->dev, &led->ldev);
		if (ret < 0)
			goto eledcr;
	}

	FUNC6(spi, dac);

	return 0;

eledcr:
	while (i--)
		FUNC3(&dac->leds[i].ldev);

	return ret;
}