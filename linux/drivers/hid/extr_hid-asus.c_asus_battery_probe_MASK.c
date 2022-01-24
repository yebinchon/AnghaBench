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
struct power_supply_config {struct asus_drvdata* drv_data; } ;
struct hid_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  uniq; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ use_for_apm; int /*<<< orphan*/  type; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; } ;
struct asus_drvdata {int battery_in_query; int /*<<< orphan*/ * battery; TYPE_1__ battery_desc; int /*<<< orphan*/  battery_next_query; int /*<<< orphan*/  battery_stat; scalar_t__ battery_capacity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  asus_battery_get_property ; 
 int /*<<< orphan*/  asus_battery_props ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,char*) ; 
 struct asus_drvdata* FUNC7 (struct hid_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hid_device *hdev)
{
	struct asus_drvdata *drvdata = FUNC7(hdev);
	struct power_supply_config pscfg = { .drv_data = drvdata };
	int ret = 0;

	drvdata->battery_capacity = 0;
	drvdata->battery_stat = POWER_SUPPLY_STATUS_UNKNOWN;
	drvdata->battery_in_query = false;

	drvdata->battery_desc.properties = asus_battery_props;
	drvdata->battery_desc.num_properties = FUNC0(asus_battery_props);
	drvdata->battery_desc.get_property = asus_battery_get_property;
	drvdata->battery_desc.type = POWER_SUPPLY_TYPE_BATTERY;
	drvdata->battery_desc.use_for_apm = 0;
	drvdata->battery_desc.name = FUNC4(&hdev->dev, GFP_KERNEL,
					"asus-keyboard-%s-battery",
					FUNC9(hdev->uniq) ?
					hdev->uniq : FUNC3(&hdev->dev));
	if (!drvdata->battery_desc.name)
		return -ENOMEM;

	drvdata->battery_next_query = jiffies;

	drvdata->battery = FUNC5(&hdev->dev,
				&(drvdata->battery_desc), &pscfg);
	if (FUNC1(drvdata->battery)) {
		ret = FUNC2(drvdata->battery);
		drvdata->battery = NULL;
		FUNC6(hdev, "Unable to register battery device\n");
		return ret;
	}

	FUNC8(drvdata->battery, &hdev->dev);

	return ret;
}