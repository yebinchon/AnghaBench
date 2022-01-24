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
struct TYPE_2__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct ptn3460_bridge {TYPE_1__ bridge; int /*<<< orphan*/  edid_emulation; void* gpio_rst_n; void* gpio_pd_n; struct i2c_client* client; int /*<<< orphan*/  panel; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ptn3460_bridge* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct ptn3460_bridge*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptn3460_bridge_funcs ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct ptn3460_bridge *ptn_bridge;
	int ret;

	ptn_bridge = FUNC5(dev, sizeof(*ptn_bridge), GFP_KERNEL);
	if (!ptn_bridge) {
		return -ENOMEM;
	}

	ret = FUNC7(dev->of_node, 0, 0, &ptn_bridge->panel, NULL);
	if (ret)
		return ret;

	ptn_bridge->client = client;

	ptn_bridge->gpio_pd_n = FUNC4(&client->dev, "powerdown",
					       GPIOD_OUT_HIGH);
	if (FUNC1(ptn_bridge->gpio_pd_n)) {
		ret = FUNC2(ptn_bridge->gpio_pd_n);
		FUNC3(dev, "cannot get gpio_pd_n %d\n", ret);
		return ret;
	}

	/*
	 * Request the reset pin low to avoid the bridge being
	 * initialized prematurely
	 */
	ptn_bridge->gpio_rst_n = FUNC4(&client->dev, "reset",
						GPIOD_OUT_LOW);
	if (FUNC1(ptn_bridge->gpio_rst_n)) {
		ret = FUNC2(ptn_bridge->gpio_rst_n);
		FUNC0("cannot get gpio_rst_n %d\n", ret);
		return ret;
	}

	ret = FUNC9(dev->of_node, "edid-emulation",
			&ptn_bridge->edid_emulation);
	if (ret) {
		FUNC3(dev, "Can't read EDID emulation value\n");
		return ret;
	}

	ptn_bridge->bridge.funcs = &ptn3460_bridge_funcs;
	ptn_bridge->bridge.of_node = dev->of_node;
	FUNC6(&ptn_bridge->bridge);

	FUNC8(client, ptn_bridge);

	return 0;
}