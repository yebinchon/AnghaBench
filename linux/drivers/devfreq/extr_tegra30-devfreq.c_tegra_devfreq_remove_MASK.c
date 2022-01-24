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
struct tegra_devfreq {int /*<<< orphan*/  clock; int /*<<< orphan*/  reset; int /*<<< orphan*/  rate_change_nb; int /*<<< orphan*/  emc_clock; int /*<<< orphan*/  devfreq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tegra_devfreq* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_devfreq_governor ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct tegra_devfreq *tegra = FUNC5(pdev);

	FUNC3(tegra->devfreq);
	FUNC4(&tegra_devfreq_governor);

	FUNC1(tegra->emc_clock, &tegra->rate_change_nb);
	FUNC2(&pdev->dev);

	FUNC6(tegra->reset);
	FUNC0(tegra->clock);

	return 0;
}