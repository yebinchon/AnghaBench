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
struct led_classdev {int dummy; } ;
struct gpio_trig_data {unsigned int gpio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct led_classdev*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct led_classdev*) ; 
 struct gpio_trig_data* FUNC5 (struct device*) ; 
 struct led_classdev* FUNC6 (struct device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct led_classdev*),int,char*,struct led_classdev*) ; 
 int FUNC8 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t n)
{
	struct led_classdev *led = FUNC6(dev);
	struct gpio_trig_data *gpio_data = FUNC5(dev);
	unsigned gpio;
	int ret;

	ret = FUNC8(buf, "%u", &gpio);
	if (ret < 1) {
		FUNC0(dev, "couldn't read gpio number\n");
		return -EINVAL;
	}

	if (gpio_data->gpio == gpio)
		return n;

	if (!FUNC2(gpio)) {
		if (FUNC2(gpio_data->gpio))
			FUNC1(FUNC3(gpio_data->gpio), led);
		gpio_data->gpio = gpio;
		return n;
	}

	ret = FUNC7(FUNC3(gpio), NULL, gpio_trig_irq,
			IRQF_ONESHOT | IRQF_SHARED | IRQF_TRIGGER_RISING
			| IRQF_TRIGGER_FALLING, "ledtrig-gpio", led);
	if (ret) {
		FUNC0(dev, "request_irq failed with error %d\n", ret);
	} else {
		if (FUNC2(gpio_data->gpio))
			FUNC1(FUNC3(gpio_data->gpio), led);
		gpio_data->gpio = gpio;
		/* After changing the GPIO, we need to update the LED. */
		FUNC4(0, led);
	}

	return ret ? ret : n;
}