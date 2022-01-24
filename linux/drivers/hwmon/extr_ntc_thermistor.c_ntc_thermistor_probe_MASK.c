#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct ntc_thermistor_platform_data {scalar_t__ pullup_uv; scalar_t__ pullup_ohm; scalar_t__ connect; scalar_t__ pulldown_ohm; int /*<<< orphan*/ * read_uv; scalar_t__ read_ohm; } ;
struct platform_device {struct ntc_thermistor_platform_data dev; } ;
struct of_device_id {struct platform_device_id* data; } ;
struct ntc_data {int /*<<< orphan*/  n_comp; int /*<<< orphan*/  comp; struct ntc_thermistor_platform_data* pdata; } ;
struct device {scalar_t__ pullup_uv; scalar_t__ pullup_ohm; scalar_t__ connect; scalar_t__ pulldown_ohm; int /*<<< orphan*/ * read_uv; scalar_t__ read_ohm; } ;
struct TYPE_3__ {int /*<<< orphan*/  n_comp; int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct ntc_thermistor_platform_data*) ; 
 scalar_t__ NTC_CONNECTED_GROUND ; 
 scalar_t__ NTC_CONNECTED_POSITIVE ; 
 int FUNC2 (struct ntc_thermistor_platform_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ntc_thermistor_platform_data*,char*,...) ; 
 struct ntc_thermistor_platform_data* FUNC4 (struct ntc_thermistor_platform_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ntc_thermistor_platform_data*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ntc_thermistor_platform_data*,char*) ; 
 struct ntc_thermistor_platform_data* FUNC7 (struct ntc_thermistor_platform_data*,int /*<<< orphan*/ ,struct ntc_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ntc_data* FUNC8 (struct ntc_thermistor_platform_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntc_chip_info ; 
 int /*<<< orphan*/  ntc_match ; 
 struct ntc_thermistor_platform_data* FUNC9 (struct ntc_thermistor_platform_data*) ; 
 TYPE_1__* ntc_type ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct ntc_thermistor_platform_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct platform_device_id* FUNC12 (struct platform_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct of_device_id *of_id =
			FUNC10(FUNC11(ntc_match), dev);
	const struct platform_device_id *pdev_id;
	struct ntc_thermistor_platform_data *pdata;
	struct device *hwmon_dev;
	struct ntc_data *data;

	pdata = FUNC9(dev);
	if (FUNC1(pdata))
		return FUNC2(pdata);
	else if (pdata == NULL)
		pdata = FUNC4(dev);

	if (!pdata) {
		FUNC3(dev, "No platform init data supplied.\n");
		return -ENODEV;
	}

	/* Either one of the two is required. */
	if (!pdata->read_uv && !pdata->read_ohm) {
		FUNC3(dev,
			"Both read_uv and read_ohm missing. Need either one of the two.\n");
		return -EINVAL;
	}

	if (pdata->read_uv && pdata->read_ohm) {
		FUNC6(dev,
			 "Only one of read_uv and read_ohm is needed; ignoring read_uv.\n");
		pdata->read_uv = NULL;
	}

	if (pdata->read_uv && (pdata->pullup_uv == 0 ||
				(pdata->pullup_ohm == 0 && pdata->connect ==
				 NTC_CONNECTED_GROUND) ||
				(pdata->pulldown_ohm == 0 && pdata->connect ==
				 NTC_CONNECTED_POSITIVE) ||
				(pdata->connect != NTC_CONNECTED_POSITIVE &&
				 pdata->connect != NTC_CONNECTED_GROUND))) {
		FUNC3(dev, "Required data to use read_uv not supplied.\n");
		return -EINVAL;
	}

	data = FUNC8(dev, sizeof(struct ntc_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	pdev_id = of_id ? of_id->data : FUNC12(pdev);

	data->pdata = pdata;

	if (pdev_id->driver_data >= FUNC0(ntc_type)) {
		FUNC3(dev, "Unknown device type: %lu(%s)\n",
				pdev_id->driver_data, pdev_id->name);
		return -EINVAL;
	}

	data->comp   = ntc_type[pdev_id->driver_data].comp;
	data->n_comp = ntc_type[pdev_id->driver_data].n_comp;

	hwmon_dev = FUNC7(dev, pdev_id->name,
							 data, &ntc_chip_info,
							 NULL);
	if (FUNC1(hwmon_dev)) {
		FUNC3(dev, "unable to register as hwmon device.\n");
		return FUNC2(hwmon_dev);
	}

	FUNC5(dev, "Thermistor type: %s successfully probed.\n",
		 pdev_id->name);

	return 0;
}