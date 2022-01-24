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
struct max30100_data {int /*<<< orphan*/  regmap; TYPE_1__* client; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX30100_REG_LED_CONFIG ; 
 int MAX30100_REG_LED_CONFIG_24MA ; 
 int MAX30100_REG_LED_CONFIG_50MA ; 
 int MAX30100_REG_LED_CONFIG_LED_MASK ; 
 int MAX30100_REG_LED_CONFIG_RED_LED_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (unsigned int,int*) ; 
 int FUNC3 (struct device_node*,char*,unsigned int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct max30100_data *data)
{
	struct device *dev = &data->client->dev;
	struct device_node *np = dev->of_node;
	unsigned int val[2];
	int reg, ret;

	ret = FUNC3(np, "maxim,led-current-microamp",
					(unsigned int *) &val, 2);
	if (ret) {
		/* Default to 24 mA RED LED, 50 mA IR LED */
		reg = (MAX30100_REG_LED_CONFIG_24MA <<
			MAX30100_REG_LED_CONFIG_RED_LED_SHIFT) |
			MAX30100_REG_LED_CONFIG_50MA;
		FUNC1(dev, "no led-current-microamp set");

		return FUNC5(data->regmap, MAX30100_REG_LED_CONFIG, reg);
	}

	/* RED LED current */
	ret = FUNC2(val[0], &reg);
	if (ret) {
		FUNC0(dev, "invalid RED current setting %d", val[0]);
		return ret;
	}

	ret = FUNC4(data->regmap, MAX30100_REG_LED_CONFIG,
		MAX30100_REG_LED_CONFIG_LED_MASK <<
		MAX30100_REG_LED_CONFIG_RED_LED_SHIFT,
		reg << MAX30100_REG_LED_CONFIG_RED_LED_SHIFT);
	if (ret)
		return ret;

	/* IR LED current */
	ret = FUNC2(val[1], &reg);
	if (ret) {
		FUNC0(dev, "invalid IR current setting %d", val[1]);
		return ret;
	}

	return FUNC4(data->regmap, MAX30100_REG_LED_CONFIG,
		MAX30100_REG_LED_CONFIG_LED_MASK, reg);
}