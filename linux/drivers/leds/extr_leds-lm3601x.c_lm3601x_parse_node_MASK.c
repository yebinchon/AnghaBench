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
struct lm3601x_led {TYPE_1__* client; int /*<<< orphan*/  max_flash_timeout; int /*<<< orphan*/  flash_current_max; int /*<<< orphan*/  torch_current_max; int /*<<< orphan*/  led_mode; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  LM3601X_LED_IR ; 
 int /*<<< orphan*/  LM3601X_LED_TORCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct fwnode_handle* FUNC2 (int /*<<< orphan*/ *,struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle*) ; 
 int FUNC4 (struct fwnode_handle*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct lm3601x_led *led,
			      struct fwnode_handle **fwnode)
{
	struct fwnode_handle *child = NULL;
	int ret = -ENODEV;

	child = FUNC2(&led->client->dev, child);
	if (!child) {
		FUNC0(&led->client->dev, "No LED Child node\n");
		return ret;
	}

	ret = FUNC4(child, "reg", &led->led_mode);
	if (ret) {
		FUNC0(&led->client->dev, "reg DT property missing\n");
		goto out_err;
	}

	if (led->led_mode > LM3601X_LED_TORCH ||
	    led->led_mode < LM3601X_LED_IR) {
		FUNC1(&led->client->dev, "Invalid led mode requested\n");
		ret = -EINVAL;
		goto out_err;
	}

	ret = FUNC4(child, "led-max-microamp",
					&led->torch_current_max);
	if (ret) {
		FUNC1(&led->client->dev,
			"led-max-microamp DT property missing\n");
		goto out_err;
	}

	ret = FUNC4(child, "flash-max-microamp",
				&led->flash_current_max);
	if (ret) {
		FUNC1(&led->client->dev,
			 "flash-max-microamp DT property missing\n");
		goto out_err;
	}

	ret = FUNC4(child, "flash-max-timeout-us",
				&led->max_flash_timeout);
	if (ret) {
		FUNC1(&led->client->dev,
			 "flash-max-timeout-us DT property missing\n");
		goto out_err;
	}

	*fwnode = child;

out_err:
	FUNC3(child);
	return ret;
}