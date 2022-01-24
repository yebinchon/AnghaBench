#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * name; scalar_t__ use_for_apm; int /*<<< orphan*/  type; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; } ;
struct wiimote_data {TYPE_1__ battery_desc; TYPE_2__* hdev; int /*<<< orphan*/  battery; } ;
struct wiimod_ops {int dummy; } ;
struct power_supply_config {struct wiimote_data* drv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  uniq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  wiimod_battery_get_property ; 
 int /*<<< orphan*/  wiimod_battery_props ; 

__attribute__((used)) static int FUNC8(const struct wiimod_ops *ops,
				struct wiimote_data *wdata)
{
	struct power_supply_config psy_cfg = { .drv_data = wdata, };
	int ret;

	wdata->battery_desc.properties = wiimod_battery_props;
	wdata->battery_desc.num_properties = FUNC0(wiimod_battery_props);
	wdata->battery_desc.get_property = wiimod_battery_get_property;
	wdata->battery_desc.type = POWER_SUPPLY_TYPE_BATTERY;
	wdata->battery_desc.use_for_apm = 0;
	wdata->battery_desc.name = FUNC4(GFP_KERNEL, "wiimote_battery_%s",
					     wdata->hdev->uniq);
	if (!wdata->battery_desc.name)
		return -ENOMEM;

	wdata->battery = FUNC7(&wdata->hdev->dev,
					       &wdata->battery_desc,
					       &psy_cfg);
	if (FUNC1(wdata->battery)) {
		FUNC3(wdata->hdev, "cannot register battery device\n");
		ret = FUNC2(wdata->battery);
		goto err_free;
	}

	FUNC6(wdata->battery, &wdata->hdev->dev);
	return 0;

err_free:
	FUNC5(wdata->battery_desc.name);
	wdata->battery_desc.name = NULL;
	return ret;
}