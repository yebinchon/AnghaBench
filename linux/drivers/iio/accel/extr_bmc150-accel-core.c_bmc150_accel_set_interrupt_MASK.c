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
struct device {int dummy; } ;
struct bmc150_accel_interrupt_info {int /*<<< orphan*/  en_bitmask; int /*<<< orphan*/  en_reg; int /*<<< orphan*/  map_bitmask; int /*<<< orphan*/  map_reg; } ;
struct bmc150_accel_interrupt {int /*<<< orphan*/  users; struct bmc150_accel_interrupt_info* info; } ;
struct bmc150_accel_data {int /*<<< orphan*/  regmap; struct bmc150_accel_interrupt* interrupts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bmc150_accel_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bmc150_accel_data *data, int i,
				      bool state)
{
	struct device *dev = FUNC4(data->regmap);
	struct bmc150_accel_interrupt *intr = &data->interrupts[i];
	const struct bmc150_accel_interrupt_info *info = intr->info;
	int ret;

	if (state) {
		if (FUNC1(&intr->users) > 1)
			return 0;
	} else {
		if (FUNC0(&intr->users) > 0)
			return 0;
	}

	/*
	 * We will expect the enable and disable to do operation in reverse
	 * order. This will happen here anyway, as our resume operation uses
	 * sync mode runtime pm calls. The suspend operation will be delayed
	 * by autosuspend delay.
	 * So the disable operation will still happen in reverse order of
	 * enable operation. When runtime pm is disabled the mode is always on,
	 * so sequence doesn't matter.
	 */
	ret = FUNC2(data, state);
	if (ret < 0)
		return ret;

	/* map the interrupt to the appropriate pins */
	ret = FUNC5(data->regmap, info->map_reg, info->map_bitmask,
				 (state ? info->map_bitmask : 0));
	if (ret < 0) {
		FUNC3(dev, "Error updating reg_int_map\n");
		goto out_fix_power_state;
	}

	/* enable/disable the interrupt */
	ret = FUNC5(data->regmap, info->en_reg, info->en_bitmask,
				 (state ? info->en_bitmask : 0));
	if (ret < 0) {
		FUNC3(dev, "Error updating reg_int_en\n");
		goto out_fix_power_state;
	}

	return 0;

out_fix_power_state:
	FUNC2(data, false);
	return ret;
}