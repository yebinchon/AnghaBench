#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u32 ;
struct property {int dummy; } ;
struct gpio_fan_speed {void* ctrl_val; void* rpm; } ;
struct gpio_fan_data {unsigned int num_gpios; unsigned int num_speed; struct gpio_fan_speed* speed; struct gpio_desc** gpios; struct gpio_desc* alarm_gpio; struct device* dev; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct gpio_desc* FUNC3 (struct device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct property* FUNC7 (struct device_node*,char*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC8 (struct property*,int /*<<< orphan*/  const*,void**) ; 

__attribute__((used)) static int FUNC9(struct gpio_fan_data *fan_data)
{
	struct gpio_fan_speed *speed;
	struct device *dev = fan_data->dev;
	struct device_node *np = dev->of_node;
	struct gpio_desc **gpios;
	unsigned i;
	u32 u;
	struct property *prop;
	const __be32 *p;

	/* Alarm GPIO if one exists */
	fan_data->alarm_gpio = FUNC4(dev, "alarm", GPIOD_IN);
	if (FUNC0(fan_data->alarm_gpio))
		return FUNC1(fan_data->alarm_gpio);

	/* Fill GPIO pin array */
	fan_data->num_gpios = FUNC6(dev, NULL);
	if (fan_data->num_gpios <= 0) {
		if (fan_data->alarm_gpio)
			return 0;
		FUNC2(dev, "DT properties empty / missing");
		return -ENODEV;
	}
	gpios = FUNC5(dev,
			     fan_data->num_gpios, sizeof(struct gpio_desc *),
			     GFP_KERNEL);
	if (!gpios)
		return -ENOMEM;
	for (i = 0; i < fan_data->num_gpios; i++) {
		gpios[i] = FUNC3(dev, NULL, i, GPIOD_ASIS);
		if (FUNC0(gpios[i]))
			return FUNC1(gpios[i]);
	}
	fan_data->gpios = gpios;

	/* Get number of RPM/ctrl_val pairs in speed map */
	prop = FUNC7(np, "gpio-fan,speed-map", &i);
	if (!prop) {
		FUNC2(dev, "gpio-fan,speed-map DT property missing");
		return -ENODEV;
	}
	i = i / sizeof(u32);
	if (i == 0 || i & 1) {
		FUNC2(dev, "gpio-fan,speed-map contains zero/odd number of entries");
		return -ENODEV;
	}
	fan_data->num_speed = i / 2;

	/*
	 * Populate speed map
	 * Speed map is in the form <RPM ctrl_val RPM ctrl_val ...>
	 * this needs splitting into pairs to create gpio_fan_speed structs
	 */
	speed = FUNC5(dev,
			fan_data->num_speed, sizeof(struct gpio_fan_speed),
			GFP_KERNEL);
	if (!speed)
		return -ENOMEM;
	p = NULL;
	for (i = 0; i < fan_data->num_speed; i++) {
		p = FUNC8(prop, p, &u);
		if (!p)
			return -ENODEV;
		speed[i].rpm = u;
		p = FUNC8(prop, p, &u);
		if (!p)
			return -ENODEV;
		speed[i].ctrl_val = u;
	}
	fan_data->speed = speed;

	return 0;
}