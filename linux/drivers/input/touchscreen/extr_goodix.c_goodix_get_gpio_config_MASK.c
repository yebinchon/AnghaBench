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
struct gpio_desc {int dummy; } ;
struct goodix_ts_data {struct gpio_desc* gpiod_rst; struct gpio_desc* gpiod_int; struct gpio_desc* vddio; struct gpio_desc* avdd28; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GOODIX_GPIO_INT_NAME ; 
 int /*<<< orphan*/  GOODIX_GPIO_RST_NAME ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct gpio_desc* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*) ; 

__attribute__((used)) static int FUNC6(struct goodix_ts_data *ts)
{
	int error;
	struct device *dev;
	struct gpio_desc *gpiod;

	if (!ts->client)
		return -EINVAL;
	dev = &ts->client->dev;

	ts->avdd28 = FUNC5(dev, "AVDD28");
	if (FUNC0(ts->avdd28)) {
		error = FUNC1(ts->avdd28);
		if (error != -EPROBE_DEFER)
			FUNC3(dev,
				"Failed to get AVDD28 regulator: %d\n", error);
		return error;
	}

	ts->vddio = FUNC5(dev, "VDDIO");
	if (FUNC0(ts->vddio)) {
		error = FUNC1(ts->vddio);
		if (error != -EPROBE_DEFER)
			FUNC3(dev,
				"Failed to get VDDIO regulator: %d\n", error);
		return error;
	}

	/* Get the interrupt GPIO pin number */
	gpiod = FUNC4(dev, GOODIX_GPIO_INT_NAME, GPIOD_IN);
	if (FUNC0(gpiod)) {
		error = FUNC1(gpiod);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get %s GPIO: %d\n",
				GOODIX_GPIO_INT_NAME, error);
		return error;
	}

	ts->gpiod_int = gpiod;

	/* Get the reset line GPIO pin number */
	gpiod = FUNC4(dev, GOODIX_GPIO_RST_NAME, GPIOD_IN);
	if (FUNC0(gpiod)) {
		error = FUNC1(gpiod);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get %s GPIO: %d\n",
				GOODIX_GPIO_RST_NAME, error);
		return error;
	}

	ts->gpiod_rst = gpiod;

	return 0;
}