#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_lsm6dsx_hw {TYPE_2__* settings; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_5__ {int wai; TYPE_1__* id; } ;
struct TYPE_4__ {int hw_id; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENODEV ; 
 int ST_LSM6DSX_MAX_ID ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_WHOAMI_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_2__* st_lsm6dsx_sensor_settings ; 

__attribute__((used)) static int FUNC3(struct st_lsm6dsx_hw *hw, int id,
				   const char **name)
{
	int err, i, j, data;

	for (i = 0; i < FUNC0(st_lsm6dsx_sensor_settings); i++) {
		for (j = 0; j < ST_LSM6DSX_MAX_ID; j++) {
			if (id == st_lsm6dsx_sensor_settings[i].id[j].hw_id)
				break;
		}
		if (j < ST_LSM6DSX_MAX_ID)
			break;
	}

	if (i == FUNC0(st_lsm6dsx_sensor_settings)) {
		FUNC1(hw->dev, "unsupported hw id [%02x]\n", id);
		return -ENODEV;
	}

	err = FUNC2(hw->regmap, ST_LSM6DSX_REG_WHOAMI_ADDR, &data);
	if (err < 0) {
		FUNC1(hw->dev, "failed to read whoami register\n");
		return err;
	}

	if (data != st_lsm6dsx_sensor_settings[i].wai) {
		FUNC1(hw->dev, "unsupported whoami [%02x]\n", data);
		return -ENODEV;
	}

	*name = st_lsm6dsx_sensor_settings[i].id[j].name;
	hw->settings = &st_lsm6dsx_sensor_settings[i];

	return 0;
}