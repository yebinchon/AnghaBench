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
struct tegra_i2c_dev {int /*<<< orphan*/  fast_clk; TYPE_1__* hw; int /*<<< orphan*/  div_clk; scalar_t__ is_multimaster_mode; int /*<<< orphan*/  adapter; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_single_clk_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tegra_i2c_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct tegra_i2c_dev *i2c_dev = FUNC3(pdev);

	FUNC2(&i2c_dev->adapter);

	if (i2c_dev->is_multimaster_mode)
		FUNC0(i2c_dev->div_clk);

	FUNC4(&pdev->dev);
	if (!FUNC5(&pdev->dev))
		FUNC7(&pdev->dev);

	FUNC1(i2c_dev->div_clk);
	if (!i2c_dev->hw->has_single_clk_source)
		FUNC1(i2c_dev->fast_clk);

	FUNC6(i2c_dev);
	return 0;
}