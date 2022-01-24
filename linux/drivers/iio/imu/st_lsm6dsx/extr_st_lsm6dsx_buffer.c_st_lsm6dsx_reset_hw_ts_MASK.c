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
struct st_lsm6dsx_sensor {int /*<<< orphan*/  ts_ref; } ;
struct st_lsm6dsx_hw {int /*<<< orphan*/ * iio_devs; } ;

/* Variables and functions */
 int ST_LSM6DSX_ID_MAX ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_TS_RESET_ADDR ; 
 int /*<<< orphan*/  ST_LSM6DSX_TS_RESET_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct st_lsm6dsx_sensor* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct st_lsm6dsx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct st_lsm6dsx_hw *hw)
{
	struct st_lsm6dsx_sensor *sensor;
	int i, err;

	/* reset hw ts counter */
	err = FUNC2(hw, ST_LSM6DSX_REG_TS_RESET_ADDR,
				      ST_LSM6DSX_TS_RESET_VAL);
	if (err < 0)
		return err;

	for (i = 0; i < ST_LSM6DSX_ID_MAX; i++) {
		if (!hw->iio_devs[i])
			continue;

		sensor = FUNC1(hw->iio_devs[i]);
		/*
		 * store enable buffer timestamp as reference for
		 * hw timestamp
		 */
		sensor->ts_ref = FUNC0(hw->iio_devs[i]);
	}
	return 0;
}