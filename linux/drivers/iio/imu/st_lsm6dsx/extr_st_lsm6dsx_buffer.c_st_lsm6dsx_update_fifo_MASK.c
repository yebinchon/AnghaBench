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
struct st_lsm6dsx_sensor {scalar_t__ id; int /*<<< orphan*/  watermark; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {scalar_t__ fifo_mode; int /*<<< orphan*/  conf_lock; scalar_t__ enable_mask; } ;

/* Variables and functions */
 scalar_t__ ST_LSM6DSX_FIFO_BYPASS ; 
 int /*<<< orphan*/  ST_LSM6DSX_FIFO_CONT ; 
 scalar_t__ ST_LSM6DSX_ID_EXT0 ; 
 scalar_t__ ST_LSM6DSX_ID_EXT1 ; 
 scalar_t__ ST_LSM6DSX_ID_EXT2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct st_lsm6dsx_hw*) ; 
 int FUNC3 (struct st_lsm6dsx_hw*) ; 
 int FUNC4 (struct st_lsm6dsx_sensor*,int) ; 
 int FUNC5 (struct st_lsm6dsx_hw*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct st_lsm6dsx_sensor*,int) ; 
 int FUNC7 (struct st_lsm6dsx_sensor*,int) ; 
 int FUNC8 (struct st_lsm6dsx_hw*) ; 
 int FUNC9 (struct st_lsm6dsx_sensor*,int /*<<< orphan*/ ) ; 

int FUNC10(struct st_lsm6dsx_sensor *sensor, bool enable)
{
	struct st_lsm6dsx_hw *hw = sensor->hw;
	int err;

	FUNC0(&hw->conf_lock);

	if (hw->fifo_mode != ST_LSM6DSX_FIFO_BYPASS) {
		err = FUNC2(hw);
		if (err < 0)
			goto out;
	}

	if (sensor->id == ST_LSM6DSX_ID_EXT0 ||
	    sensor->id == ST_LSM6DSX_ID_EXT1 ||
	    sensor->id == ST_LSM6DSX_ID_EXT2) {
		err = FUNC7(sensor, enable);
		if (err < 0)
			goto out;
	} else {
		err = FUNC4(sensor, enable);
		if (err < 0)
			goto out;

		err = FUNC6(sensor, enable);
		if (err < 0)
			goto out;
	}

	err = FUNC8(hw);
	if (err < 0)
		goto out;

	err = FUNC9(sensor, sensor->watermark);
	if (err < 0)
		goto out;

	if (hw->enable_mask) {
		/* reset hw ts counter */
		err = FUNC3(hw);
		if (err < 0)
			goto out;

		err = FUNC5(hw, ST_LSM6DSX_FIFO_CONT);
	}

out:
	FUNC1(&hw->conf_lock);

	return err;
}