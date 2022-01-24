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
typedef  int /*<<< orphan*/  u32 ;
struct stm32f7_i2c_dev {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
					  struct stm32f7_i2c_dev *i2c_dev)
{
	struct device_node *np = pdev->dev.of_node;
	int ret;
	u32 reg, mask;

	i2c_dev->regmap = FUNC3(np, "st,syscfg-fmp");
	if (FUNC0(i2c_dev->regmap)) {
		/* Optional */
		return 0;
	}

	ret = FUNC1(np, "st,syscfg-fmp", 1, &reg);
	if (ret)
		return ret;

	ret = FUNC1(np, "st,syscfg-fmp", 2, &mask);
	if (ret)
		return ret;

	return FUNC2(i2c_dev->regmap, reg, mask, mask);
}