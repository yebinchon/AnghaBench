#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sch5627_data {int control; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  addr; int /*<<< orphan*/  watchdog; int /*<<< orphan*/ * hwmon_dev; int /*<<< orphan*/  last_battery; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVNAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int SCH5627_COMPANY_ID ; 
 int SCH5627_HWMON_ID ; 
 int SCH5627_PRIMARY_ID ; 
 int /*<<< orphan*/  SCH5627_REG_BUILD_CODE ; 
 int /*<<< orphan*/  SCH5627_REG_BUILD_ID ; 
 int /*<<< orphan*/  SCH5627_REG_COMPANY_ID ; 
 int /*<<< orphan*/  SCH5627_REG_CTRL ; 
 int /*<<< orphan*/  SCH5627_REG_HWMON_ID ; 
 int /*<<< orphan*/  SCH5627_REG_HWMON_REV ; 
 int /*<<< orphan*/  SCH5627_REG_PRIMARY_ID ; 
 struct sch5627_data* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct sch5627_data*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,...) ; 
 int /*<<< orphan*/  sch5627_group ; 
 int FUNC9 (struct sch5627_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct sch5627_data *data;
	int err, build_code, build_id, hwmon_rev, val;

	data = FUNC2(&pdev->dev, sizeof(struct sch5627_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->addr = FUNC5(pdev, IORESOURCE_IO, 0)->start;
	FUNC4(&data->update_lock);
	FUNC6(pdev, data);

	val = FUNC11(data->addr, SCH5627_REG_HWMON_ID);
	if (val < 0) {
		err = val;
		goto error;
	}
	if (val != SCH5627_HWMON_ID) {
		FUNC7("invalid %s id: 0x%02X (expected 0x%02X)\n", "hwmon",
		       val, SCH5627_HWMON_ID);
		err = -ENODEV;
		goto error;
	}

	val = FUNC11(data->addr, SCH5627_REG_COMPANY_ID);
	if (val < 0) {
		err = val;
		goto error;
	}
	if (val != SCH5627_COMPANY_ID) {
		FUNC7("invalid %s id: 0x%02X (expected 0x%02X)\n", "company",
		       val, SCH5627_COMPANY_ID);
		err = -ENODEV;
		goto error;
	}

	val = FUNC11(data->addr, SCH5627_REG_PRIMARY_ID);
	if (val < 0) {
		err = val;
		goto error;
	}
	if (val != SCH5627_PRIMARY_ID) {
		FUNC7("invalid %s id: 0x%02X (expected 0x%02X)\n", "primary",
		       val, SCH5627_PRIMARY_ID);
		err = -ENODEV;
		goto error;
	}

	build_code = FUNC11(data->addr,
					      SCH5627_REG_BUILD_CODE);
	if (build_code < 0) {
		err = build_code;
		goto error;
	}

	build_id = FUNC12(data->addr,
					      SCH5627_REG_BUILD_ID);
	if (build_id < 0) {
		err = build_id;
		goto error;
	}

	hwmon_rev = FUNC11(data->addr,
					     SCH5627_REG_HWMON_REV);
	if (hwmon_rev < 0) {
		err = hwmon_rev;
		goto error;
	}

	val = FUNC11(data->addr, SCH5627_REG_CTRL);
	if (val < 0) {
		err = val;
		goto error;
	}
	data->control = val;
	if (!(data->control & 0x01)) {
		FUNC7("hardware monitoring not enabled\n");
		err = -ENODEV;
		goto error;
	}
	/* Trigger a Vbat voltage measurement, so that we get a valid reading
	   the first time we read Vbat */
	FUNC14(data->addr, SCH5627_REG_CTRL,
				  data->control | 0x10);
	data->last_battery = jiffies;

	/*
	 * Read limits, we do this only once as reading a register on
	 * the sch5627 is quite expensive (and they don't change).
	 */
	err = FUNC9(data);
	if (err)
		goto error;

	FUNC8("found %s chip at %#hx\n", DEVNAME, data->addr);
	FUNC8("firmware build: code 0x%02X, id 0x%04X, hwmon: rev 0x%02X\n",
		build_code, build_id, hwmon_rev);

	/* Register sysfs interface files */
	err = FUNC15(&pdev->dev.kobj, &sch5627_group);
	if (err)
		goto error;

	data->hwmon_dev = FUNC3(&pdev->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		data->hwmon_dev = NULL;
		goto error;
	}

	/* Note failing to register the watchdog is not a fatal error */
	data->watchdog = FUNC13(&pdev->dev, data->addr,
			(build_code << 24) | (build_id << 8) | hwmon_rev,
			&data->update_lock, 1);

	return 0;

error:
	FUNC10(pdev);
	return err;
}