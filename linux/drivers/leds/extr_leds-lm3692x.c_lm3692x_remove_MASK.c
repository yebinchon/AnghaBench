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
struct lm3692x_led {int /*<<< orphan*/  lock; TYPE_1__* client; scalar_t__ regulator; scalar_t__ enable_gpio; int /*<<< orphan*/  regmap; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM3692X_DEVICE_EN ; 
 int /*<<< orphan*/  LM3692X_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct lm3692x_led* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct lm3692x_led *led = FUNC2(client);
	int ret;

	ret = FUNC4(led->regmap, LM3692X_EN, LM3692X_DEVICE_EN, 0);
	if (ret) {
		FUNC0(&led->client->dev, "Failed to disable regulator\n");
		return ret;
	}

	if (led->enable_gpio)
		FUNC1(led->enable_gpio, 0);

	if (led->regulator) {
		ret = FUNC5(led->regulator);
		if (ret)
			FUNC0(&led->client->dev,
				"Failed to disable regulator\n");
	}

	FUNC3(&led->lock);

	return 0;
}