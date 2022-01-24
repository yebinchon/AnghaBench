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
struct gic_clk_data {int /*<<< orphan*/  num_clocks; } ;
struct gic_chip_pm {int /*<<< orphan*/  clks; struct gic_clk_data* clk_data; struct gic_chip_data* chip_data; } ;
struct gic_chip_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gic_chip_pm* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gic_chip_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct gic_chip_data*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct gic_chip_pm *chip_pm = FUNC1(dev);
	struct gic_chip_data *gic = chip_pm->chip_data;
	const struct gic_clk_data *data = chip_pm->clk_data;

	FUNC3(gic);
	FUNC2(gic);

	FUNC0(data->num_clocks, chip_pm->clks);

	return 0;
}