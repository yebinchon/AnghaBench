#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int u32 ;
struct rpi_hwmon_data {int last_throttled; TYPE_1__* hwmon_dev; int /*<<< orphan*/  fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPI_FIRMWARE_GET_THROTTLED ; 
 int UNDERVOLTAGE_STICKY_BIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC5(struct rpi_hwmon_data *data)
{
	u32 new_uv, old_uv, value;
	int ret;

	/* Request firmware to clear sticky bits */
	value = 0xffff;

	ret = FUNC3(data->fw, RPI_FIRMWARE_GET_THROTTLED,
				    &value, sizeof(value));
	if (ret) {
		FUNC1(data->hwmon_dev, "Failed to get throttled (%d)\n",
			     ret);
		return;
	}

	new_uv = value & UNDERVOLTAGE_STICKY_BIT;
	old_uv = data->last_throttled & UNDERVOLTAGE_STICKY_BIT;
	data->last_throttled = value;

	if (new_uv == old_uv)
		return;

	if (new_uv)
		FUNC0(data->hwmon_dev, "Undervoltage detected!\n");
	else
		FUNC2(data->hwmon_dev, "Voltage normalised\n");

	FUNC4(&data->hwmon_dev->kobj, NULL, "in0_lcrit_alarm");
}