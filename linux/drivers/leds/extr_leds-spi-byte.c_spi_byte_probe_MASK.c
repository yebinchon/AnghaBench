#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct spi_device {struct device dev; } ;
struct TYPE_5__ {scalar_t__ brightness; scalar_t__ max_brightness; int /*<<< orphan*/  (* brightness_set_blocking ) (TYPE_2__*,scalar_t__) ;int /*<<< orphan*/  name; } ;
struct spi_byte_led {int /*<<< orphan*/  mutex; TYPE_2__ ldev; TYPE_1__* cdef; int /*<<< orphan*/  name; struct spi_device* spi; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ off_value; scalar_t__ max_value; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct spi_byte_led* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  spi_byte_dt_ids ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct spi_byte_led*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC14(struct spi_device *spi)
{
	const struct of_device_id *of_dev_id;
	struct device_node *child;
	struct device *dev = &spi->dev;
	struct spi_byte_led *led;
	const char *name = "leds-spi-byte::";
	const char *state;
	int ret;

	of_dev_id = FUNC8(spi_byte_dt_ids, dev);
	if (!of_dev_id)
		return -EINVAL;

	if (FUNC5(dev->of_node) != 1) {
		FUNC0(dev, "Device must have exactly one LED sub-node.");
		return -EINVAL;
	}
	child = FUNC6(dev->of_node, NULL);

	led = FUNC1(dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	FUNC9(child, "label", &name);
	FUNC13(led->name, name, sizeof(led->name));
	led->spi = spi;
	FUNC4(&led->mutex);
	led->cdef = of_dev_id->data;
	led->ldev.name = led->name;
	led->ldev.brightness = LED_OFF;
	led->ldev.max_brightness = led->cdef->max_value - led->cdef->off_value;
	led->ldev.brightness_set_blocking = spi_byte_brightness_set_blocking;

	state = FUNC7(child, "default-state", NULL);
	if (state) {
		if (!FUNC12(state, "on")) {
			led->ldev.brightness = led->ldev.max_brightness;
		} else if (FUNC12(state, "off")) {
			/* all other cases except "off" */
			FUNC0(dev, "default-state can only be 'on' or 'off'");
			return -EINVAL;
		}
	}
	FUNC10(&led->ldev,
					 led->ldev.brightness);

	ret = FUNC2(&spi->dev, &led->ldev);
	if (ret) {
		FUNC3(&led->mutex);
		return ret;
	}
	FUNC11(spi, led);

	return 0;
}