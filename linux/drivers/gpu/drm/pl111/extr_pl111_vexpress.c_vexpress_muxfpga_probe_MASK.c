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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct regmap*) ; 
 struct regmap* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct regmap *map;

	map = FUNC3(&pdev->dev);
	if (FUNC0(map))
		return FUNC1(map);
	FUNC2(dev, map);

	return 0;
}