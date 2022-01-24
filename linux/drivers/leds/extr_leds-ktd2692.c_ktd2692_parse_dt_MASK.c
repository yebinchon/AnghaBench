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
struct ktd2692_led_config_data {int /*<<< orphan*/  flash_max_timeout; int /*<<< orphan*/  flash_max_microamp; int /*<<< orphan*/  movie_max_microamp; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ led_cdev; } ;
struct ktd2692_context {TYPE_2__ fled_cdev; int /*<<< orphan*/ * regulator; void* aux_gpio; void* ctrl_gpio; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,char*) ; 
 struct device_node* FUNC5 (struct device_node*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ktd2692_context *led, struct device *dev,
			    struct ktd2692_led_config_data *cfg)
{
	struct device_node *np = dev->of_node;
	struct device_node *child_node;
	int ret;

	if (!dev->of_node)
		return -ENXIO;

	led->ctrl_gpio = FUNC3(dev, "ctrl", GPIOD_ASIS);
	ret = FUNC1(led->ctrl_gpio);
	if (ret) {
		FUNC2(dev, "cannot get ctrl-gpios %d\n", ret);
		return ret;
	}

	led->aux_gpio = FUNC3(dev, "aux", GPIOD_ASIS);
	ret = FUNC1(led->aux_gpio);
	if (ret) {
		FUNC2(dev, "cannot get aux-gpios %d\n", ret);
		return ret;
	}

	led->regulator = FUNC4(dev, "vin");
	if (FUNC0(led->regulator))
		led->regulator = NULL;

	if (led->regulator) {
		ret = FUNC9(led->regulator);
		if (ret)
			FUNC2(dev, "Failed to enable supply: %d\n", ret);
	}

	child_node = FUNC5(np, NULL);
	if (!child_node) {
		FUNC2(dev, "No DT child node found for connected LED.\n");
		return -EINVAL;
	}

	led->fled_cdev.led_cdev.name =
		FUNC6(child_node, "label", NULL) ? : child_node->name;

	ret = FUNC8(child_node, "led-max-microamp",
				   &cfg->movie_max_microamp);
	if (ret) {
		FUNC2(dev, "failed to parse led-max-microamp\n");
		goto err_parse_dt;
	}

	ret = FUNC8(child_node, "flash-max-microamp",
				   &cfg->flash_max_microamp);
	if (ret) {
		FUNC2(dev, "failed to parse flash-max-microamp\n");
		goto err_parse_dt;
	}

	ret = FUNC8(child_node, "flash-max-timeout-us",
				   &cfg->flash_max_timeout);
	if (ret) {
		FUNC2(dev, "failed to parse flash-max-timeout-us\n");
		goto err_parse_dt;
	}

err_parse_dt:
	FUNC7(child_node);
	return ret;
}