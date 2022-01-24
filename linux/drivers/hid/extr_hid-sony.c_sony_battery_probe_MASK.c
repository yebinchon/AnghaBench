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
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ use_for_apm; int /*<<< orphan*/  type; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; } ;
struct sony_sc {int battery_capacity; int /*<<< orphan*/  battery; TYPE_1__ battery_desc; int /*<<< orphan*/  device_id; int /*<<< orphan*/  mac_address; struct hid_device* hdev; } ;
struct power_supply_config {struct sony_sc* drv_data; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sony_battery_get_property ; 
 int /*<<< orphan*/  sony_battery_props ; 

__attribute__((used)) static int FUNC7(struct sony_sc *sc, int append_dev_id)
{
	const char *battery_str_fmt = append_dev_id ?
		"sony_controller_battery_%pMR_%i" :
		"sony_controller_battery_%pMR";
	struct power_supply_config psy_cfg = { .drv_data = sc, };
	struct hid_device *hdev = sc->hdev;
	int ret;

	/*
	 * Set the default battery level to 100% to avoid low battery warnings
	 * if the battery is polled before the first device report is received.
	 */
	sc->battery_capacity = 100;

	sc->battery_desc.properties = sony_battery_props;
	sc->battery_desc.num_properties = FUNC0(sony_battery_props);
	sc->battery_desc.get_property = sony_battery_get_property;
	sc->battery_desc.type = POWER_SUPPLY_TYPE_BATTERY;
	sc->battery_desc.use_for_apm = 0;
	sc->battery_desc.name = FUNC3(&hdev->dev, GFP_KERNEL,
					  battery_str_fmt, sc->mac_address, sc->device_id);
	if (!sc->battery_desc.name)
		return -ENOMEM;

	sc->battery = FUNC4(&hdev->dev, &sc->battery_desc,
					    &psy_cfg);
	if (FUNC1(sc->battery)) {
		ret = FUNC2(sc->battery);
		FUNC5(hdev, "Unable to register battery device\n");
		return ret;
	}

	FUNC6(sc->battery, &hdev->dev);
	return 0;
}