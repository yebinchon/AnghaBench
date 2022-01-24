#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct ps8622_bridge {scalar_t__ max_lane_count; scalar_t__ lane_count; TYPE_2__ bridge; TYPE_3__* bl; TYPE_3__* gpio_rst; TYPE_3__* gpio_slp; TYPE_3__* v12; struct i2c_client* client; int /*<<< orphan*/  panel; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_7__ {void* brightness; void* max_brightness; } ;
struct TYPE_9__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 void* PS8622_MAX_BRIGHTNESS ; 
 int FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (char*,struct device*,struct ps8622_bridge*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ps8622_bridge* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct ps8622_bridge*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  ps8622_backlight_ops ; 
 int /*<<< orphan*/  ps8622_bridge_funcs ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct ps8622_bridge *ps8622;
	int ret;

	ps8622 = FUNC7(dev, sizeof(*ps8622), GFP_KERNEL);
	if (!ps8622)
		return -ENOMEM;

	ret = FUNC10(dev->of_node, 0, 0, &ps8622->panel, NULL);
	if (ret)
		return ret;

	ps8622->client = client;

	ps8622->v12 = FUNC8(dev, "vdd12");
	if (FUNC1(ps8622->v12)) {
		FUNC5(dev, "no 1.2v regulator found for PS8622\n");
		ps8622->v12 = NULL;
	}

	ps8622->gpio_slp = FUNC6(dev, "sleep", GPIOD_OUT_HIGH);
	if (FUNC1(ps8622->gpio_slp)) {
		ret = FUNC2(ps8622->gpio_slp);
		FUNC4(dev, "cannot get gpio_slp %d\n", ret);
		return ret;
	}

	/*
	 * Assert the reset pin high to avoid the bridge being
	 * initialized prematurely
	 */
	ps8622->gpio_rst = FUNC6(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(ps8622->gpio_rst)) {
		ret = FUNC2(ps8622->gpio_rst);
		FUNC4(dev, "cannot get gpio_rst %d\n", ret);
		return ret;
	}

	ps8622->max_lane_count = id->driver_data;

	if (FUNC13(dev->of_node, "lane-count",
						&ps8622->lane_count)) {
		ps8622->lane_count = ps8622->max_lane_count;
	} else if (ps8622->lane_count > ps8622->max_lane_count) {
		FUNC5(dev, "lane-count property is too high,"
						"using max_lane_count\n");
		ps8622->lane_count = ps8622->max_lane_count;
	}

	if (!FUNC12(dev->of_node, "use-external-pwm", NULL)) {
		ps8622->bl = FUNC3("ps8622-backlight",
				dev, ps8622, &ps8622_backlight_ops,
				NULL);
		if (FUNC1(ps8622->bl)) {
			FUNC0("failed to register backlight\n");
			ret = FUNC2(ps8622->bl);
			ps8622->bl = NULL;
			return ret;
		}
		ps8622->bl->props.max_brightness = PS8622_MAX_BRIGHTNESS;
		ps8622->bl->props.brightness = PS8622_MAX_BRIGHTNESS;
	}

	ps8622->bridge.funcs = &ps8622_bridge_funcs;
	ps8622->bridge.of_node = dev->of_node;
	FUNC9(&ps8622->bridge);

	FUNC11(client, ps8622);

	return 0;
}