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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct nsa320_hwmon {int /*<<< orphan*/  update_lock; void* data; void* clk; void* act; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct device*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (int /*<<< orphan*/ *,char*,struct nsa320_hwmon*,int /*<<< orphan*/ ) ; 
 struct nsa320_hwmon* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsa320_groups ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct nsa320_hwmon	*hwmon;
	struct device		*classdev;

	hwmon = FUNC5(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
	if (!hwmon)
		return -ENOMEM;

	/* Look up the GPIO pins to use */
	hwmon->act = FUNC3(&pdev->dev, "act", GPIOD_OUT_LOW);
	if (FUNC0(hwmon->act))
		return FUNC1(hwmon->act);

	hwmon->clk = FUNC3(&pdev->dev, "clk", GPIOD_OUT_HIGH);
	if (FUNC0(hwmon->clk))
		return FUNC1(hwmon->clk);

	hwmon->data = FUNC3(&pdev->dev, "data", GPIOD_IN);
	if (FUNC0(hwmon->data))
		return FUNC1(hwmon->data);

	FUNC6(&hwmon->update_lock);

	classdev = FUNC4(&pdev->dev,
					"nsa320", hwmon, nsa320_groups);

	return FUNC2(classdev);

}