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
struct bmg160_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bmg160_data *data, bool on)
{
#ifdef CONFIG_PM
	struct device *dev = regmap_get_device(data->regmap);
	int ret;

	if (on)
		ret = pm_runtime_get_sync(dev);
	else {
		pm_runtime_mark_last_busy(dev);
		ret = pm_runtime_put_autosuspend(dev);
	}

	if (ret < 0) {
		dev_err(dev, "Failed: bmg160_set_power_state for %d\n", on);

		if (on)
			pm_runtime_put_noidle(dev);

		return ret;
	}
#endif

	return 0;
}