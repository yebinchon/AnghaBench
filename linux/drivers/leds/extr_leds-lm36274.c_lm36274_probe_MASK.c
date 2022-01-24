#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ti_lmu {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct lm36274 {int /*<<< orphan*/  led_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ti_lmu* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct lm36274*) ; 
 struct lm36274* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct lm36274*) ; 
 int FUNC6 (struct lm36274*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct ti_lmu *lmu = FUNC1(pdev->dev.parent);
	struct lm36274 *lm36274_data;
	int ret;

	lm36274_data = FUNC3(&pdev->dev, sizeof(*lm36274_data),
				    GFP_KERNEL);
	if (!lm36274_data)
		return -ENOMEM;

	lm36274_data->pdev = pdev;
	lm36274_data->dev = lmu->dev;
	lm36274_data->regmap = lmu->regmap;
	FUNC2(&pdev->dev, lm36274_data);

	ret = FUNC6(lm36274_data);
	if (ret) {
		FUNC0(lm36274_data->dev, "Failed to parse DT node\n");
		return ret;
	}

	ret = FUNC5(lm36274_data);
	if (ret) {
		FUNC0(lm36274_data->dev, "Failed to init the device\n");
		return ret;
	}

	return FUNC4(lm36274_data->dev,
					 &lm36274_data->led_dev);
}