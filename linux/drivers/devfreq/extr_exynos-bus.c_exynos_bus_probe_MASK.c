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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct exynos_bus {int /*<<< orphan*/ * opp_table; int /*<<< orphan*/  clk; struct devfreq* devfreq; struct device* dev; int /*<<< orphan*/  lock; } ;
struct device_node {int dummy; } ;
struct devfreq_simple_ondemand_data {int upthreshold; int downdifferential; struct devfreq* parent; } ;
struct devfreq_passive_data {int upthreshold; int downdifferential; struct devfreq* parent; } ;
struct devfreq_dev_profile {int polling_ms; int /*<<< orphan*/  exit; void* target; int /*<<< orphan*/  get_dev_status; } ;
struct devfreq {TYPE_1__* profile; } ;
struct TYPE_2__ {int max_state; int* freq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFREQ_GOV_PASSIVE ; 
 int /*<<< orphan*/  DEVFREQ_GOV_SIMPLE_ONDEMAND ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct devfreq*) ; 
 int FUNC1 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct devfreq* FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,struct devfreq_dev_profile*,int /*<<< orphan*/ ,struct devfreq_simple_ondemand_data*) ; 
 int FUNC9 (struct device*,struct devfreq*) ; 
 void* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct exynos_bus*) ; 
 int /*<<< orphan*/  exynos_bus_exit ; 
 int /*<<< orphan*/  exynos_bus_get_dev_status ; 
 int FUNC12 (struct device_node*,struct exynos_bus*) ; 
 int FUNC13 (struct device_node*,struct exynos_bus*) ; 
 int /*<<< orphan*/  exynos_bus_passive_exit ; 
 int FUNC14 (struct exynos_bus*) ; 
 void* exynos_bus_target ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct device_node*) ; 
 struct device_node* FUNC17 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct exynos_bus*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node, *node;
	struct devfreq_dev_profile *profile;
	struct devfreq_simple_ondemand_data *ondemand_data;
	struct devfreq_passive_data *passive_data;
	struct devfreq *parent_devfreq;
	struct exynos_bus *bus;
	int ret, max_state;
	unsigned long min_freq, max_freq;
	bool passive = false;

	if (!np) {
		FUNC3(dev, "failed to find devicetree node\n");
		return -EINVAL;
	}

	bus = FUNC10(&pdev->dev, sizeof(*bus), GFP_KERNEL);
	if (!bus)
		return -ENOMEM;
	FUNC15(&bus->lock);
	bus->dev = &pdev->dev;
	FUNC18(pdev, bus);

	profile = FUNC10(dev, sizeof(*profile), GFP_KERNEL);
	if (!profile)
		return -ENOMEM;

	node = FUNC17(dev->of_node, "devfreq", 0);
	if (node) {
		FUNC16(node);
		passive = true;
	} else {
		ret = FUNC12(np, bus);
		if (ret < 0)
			return ret;
	}

	/* Parse the device-tree to get the resource information */
	ret = FUNC13(np, bus);
	if (ret < 0)
		goto err_reg;

	if (passive)
		goto passive;

	/* Initialize the struct profile and governor data for parent device */
	profile->polling_ms = 50;
	profile->target = exynos_bus_target;
	profile->get_dev_status = exynos_bus_get_dev_status;
	profile->exit = exynos_bus_exit;

	ondemand_data = FUNC10(dev, sizeof(*ondemand_data), GFP_KERNEL);
	if (!ondemand_data) {
		ret = -ENOMEM;
		goto err;
	}
	ondemand_data->upthreshold = 40;
	ondemand_data->downdifferential = 5;

	/* Add devfreq device to monitor and handle the exynos bus */
	bus->devfreq = FUNC8(dev, profile,
						DEVFREQ_GOV_SIMPLE_ONDEMAND,
						ondemand_data);
	if (FUNC0(bus->devfreq)) {
		FUNC3(dev, "failed to add devfreq device\n");
		ret = FUNC1(bus->devfreq);
		goto err;
	}

	/* Register opp_notifier to catch the change of OPP  */
	ret = FUNC9(dev, bus->devfreq);
	if (ret < 0) {
		FUNC3(dev, "failed to register opp notifier\n");
		goto err;
	}

	/*
	 * Enable devfreq-event to get raw data which is used to determine
	 * current bus load.
	 */
	ret = FUNC11(bus);
	if (ret < 0) {
		FUNC3(dev, "failed to enable devfreq-event devices\n");
		goto err;
	}

	ret = FUNC14(bus);
	if (ret < 0) {
		FUNC3(dev, "failed to set event to devfreq-event devices\n");
		goto err;
	}

	goto out;
passive:
	/* Initialize the struct profile and governor data for passive device */
	profile->target = exynos_bus_target;
	profile->exit = exynos_bus_passive_exit;

	/* Get the instance of parent devfreq device */
	parent_devfreq = FUNC7(dev, 0);
	if (FUNC0(parent_devfreq)) {
		ret = -EPROBE_DEFER;
		goto err;
	}

	passive_data = FUNC10(dev, sizeof(*passive_data), GFP_KERNEL);
	if (!passive_data) {
		ret = -ENOMEM;
		goto err;
	}
	passive_data->parent = parent_devfreq;

	/* Add devfreq device for exynos bus with passive governor */
	bus->devfreq = FUNC8(dev, profile, DEVFREQ_GOV_PASSIVE,
						passive_data);
	if (FUNC0(bus->devfreq)) {
		FUNC3(dev,
			"failed to add devfreq dev with passive governor\n");
		ret = FUNC1(bus->devfreq);
		goto err;
	}

out:
	max_state = bus->devfreq->profile->max_state;
	min_freq = (bus->devfreq->profile->freq_table[0] / 1000);
	max_freq = (bus->devfreq->profile->freq_table[max_state - 1] / 1000);
	FUNC19("exynos-bus: new bus device registered: %s (%6ld KHz ~ %6ld KHz)\n",
			FUNC4(dev), min_freq, max_freq);

	return 0;

err:
	FUNC5(dev);
	FUNC2(bus->clk);
err_reg:
	if (!passive) {
		FUNC6(bus->opp_table);
		bus->opp_table = NULL;
	}

	return ret;
}