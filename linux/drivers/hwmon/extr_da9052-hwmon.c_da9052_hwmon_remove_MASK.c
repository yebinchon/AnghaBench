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
struct platform_device {int dummy; } ;
struct da9052_hwmon {int /*<<< orphan*/  tsiref; int /*<<< orphan*/  da9052; scalar_t__ tsi_as_adc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_IRQ_TSIREADY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct da9052_hwmon*) ; 
 struct da9052_hwmon* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct da9052_hwmon *hwmon = FUNC1(pdev);

	if (hwmon->tsi_as_adc) {
		FUNC0(hwmon->da9052, DA9052_IRQ_TSIREADY, hwmon);
		FUNC2(hwmon->tsiref);
	}

	return 0;
}