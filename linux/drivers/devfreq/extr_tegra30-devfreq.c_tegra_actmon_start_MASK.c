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
struct tegra_devfreq {int /*<<< orphan*/  irq; int /*<<< orphan*/ * devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTMON_GLB_PERIOD_CTRL ; 
 scalar_t__ ACTMON_SAMPLING_PERIOD ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_devfreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_devfreq*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_devfreq*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tegra_devfreq *tegra)
{
	unsigned int i;

	FUNC3(tegra->irq);

	FUNC2(tegra, ACTMON_SAMPLING_PERIOD - 1,
		      ACTMON_GLB_PERIOD_CTRL);

	for (i = 0; i < FUNC0(tegra->devices); i++)
		FUNC5(tegra, &tegra->devices[i]);

	FUNC1(tegra);

	FUNC4(tegra->irq);
}