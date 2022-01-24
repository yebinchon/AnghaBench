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
struct lm3601x_led {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct lm3601x_led* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct lm3601x_led*) ; 
 int FUNC6 (struct lm3601x_led*,struct fwnode_handle**) ; 
 int FUNC7 (struct lm3601x_led*,struct fwnode_handle*) ; 
 int /*<<< orphan*/  lm3601x_regmap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct lm3601x_led *led;
	struct fwnode_handle *fwnode;
	int ret;

	led = FUNC3(&client->dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	led->client = client;
	FUNC5(client, led);

	ret = FUNC6(led, &fwnode);
	if (ret)
		return -ENODEV;

	led->regmap = FUNC4(client, &lm3601x_regmap);
	if (FUNC0(led->regmap)) {
		ret = FUNC1(led->regmap);
		FUNC2(&client->dev,
			"Failed to allocate register map: %d\n", ret);
		return ret;
	}

	FUNC8(&led->lock);

	return FUNC7(led, fwnode);
}