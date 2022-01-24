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
 int /*<<< orphan*/  ACTMON_DEV_CTRL ; 
 int /*<<< orphan*/  ACTMON_DEV_INTR_STATUS ; 
 int ACTMON_INTR_STATUS_CLEAR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_devfreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tegra_devfreq *tegra)
{
	unsigned int i;

	FUNC3(tegra->irq);

	for (i = 0; i < FUNC0(tegra->devices); i++) {
		FUNC2(&tegra->devices[i], 0x00000000, ACTMON_DEV_CTRL);
		FUNC2(&tegra->devices[i], ACTMON_INTR_STATUS_CLEAR,
			      ACTMON_DEV_INTR_STATUS);
	}

	FUNC1(tegra);

	FUNC4(tegra->irq);
}