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
struct opp_table {int dummy; } ;
struct exynos_bus {int edev_count; struct opp_table* opp_table; int /*<<< orphan*/  ratio; struct opp_table** edev; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SATURATION_RATIO ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct opp_table*) ; 
 int FUNC1 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct opp_table*) ; 
 struct opp_table* FUNC4 (struct device*,char const**,int) ; 
 struct opp_table* FUNC5 (struct device*,int) ; 
 int FUNC6 (struct device*) ; 
 struct opp_table** FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device_node *np,
					struct exynos_bus *bus)
{
	struct device *dev = bus->dev;
	struct opp_table *opp_table;
	const char *vdd = "vdd";
	int i, ret, count, size;

	opp_table = FUNC4(dev, &vdd, 1);
	if (FUNC0(opp_table)) {
		ret = FUNC1(opp_table);
		FUNC2(dev, "failed to set regulators %d\n", ret);
		return ret;
	}

	bus->opp_table = opp_table;

	/*
	 * Get the devfreq-event devices to get the current utilization of
	 * buses. This raw data will be used in devfreq ondemand governor.
	 */
	count = FUNC6(dev);
	if (count < 0) {
		FUNC2(dev, "failed to get the count of devfreq-event dev\n");
		ret = count;
		goto err_regulator;
	}
	bus->edev_count = count;

	size = sizeof(*bus->edev) * count;
	bus->edev = FUNC7(dev, size, GFP_KERNEL);
	if (!bus->edev) {
		ret = -ENOMEM;
		goto err_regulator;
	}

	for (i = 0; i < count; i++) {
		bus->edev[i] = FUNC5(dev, i);
		if (FUNC0(bus->edev[i])) {
			ret = -EPROBE_DEFER;
			goto err_regulator;
		}
	}

	/*
	 * Optionally, Get the saturation ratio according to Exynos SoC
	 * When measuring the utilization of each AXI bus with devfreq-event
	 * devices, the measured real cycle might be much lower than the
	 * total cycle of bus during sampling rate. In result, the devfreq
	 * simple-ondemand governor might not decide to change the current
	 * frequency due to too utilization (= real cycle/total cycle).
	 * So, this property is used to adjust the utilization when calculating
	 * the busy_time in exynos_bus_get_dev_status().
	 */
	if (FUNC8(np, "exynos,saturation-ratio", &bus->ratio))
		bus->ratio = DEFAULT_SATURATION_RATIO;

	return 0;

err_regulator:
	FUNC3(bus->opp_table);
	bus->opp_table = NULL;

	return ret;
}