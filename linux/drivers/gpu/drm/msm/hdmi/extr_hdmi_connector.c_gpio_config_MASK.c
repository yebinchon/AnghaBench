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
struct hdmi_platform_config {struct hdmi_gpio_data* gpios; } ;
struct hdmi_gpio_data {int value; scalar_t__ gpiod; scalar_t__ output; } ;
struct hdmi {struct hdmi_platform_config* config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HDMI_MAX_NUM_GPIO ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct hdmi *hdmi, bool on)
{
	const struct hdmi_platform_config *config = hdmi->config;
	int i;

	if (on) {
		for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
			struct hdmi_gpio_data gpio = config->gpios[i];

			if (gpio.gpiod) {
				if (gpio.output) {
					FUNC2(gpio.gpiod,
							       gpio.value);
				} else {
					FUNC1(gpio.gpiod);
					FUNC3(gpio.gpiod,
								 gpio.value);
				}
			}
		}

		FUNC0("gpio on");
	} else {
		for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
			struct hdmi_gpio_data gpio = config->gpios[i];

			if (!gpio.gpiod)
				continue;

			if (gpio.output) {
				int value = gpio.value ? 0 : 1;

				FUNC3(gpio.gpiod, value);
			}
		};

		FUNC0("gpio off");
	}

	return 0;
}