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
typedef  int /*<<< orphan*/  u8 ;
struct st_lsm6dsx_sensor {int dummy; } ;
struct st_lsm6dsx_hw {int /*<<< orphan*/ * iio_devs; } ;
typedef  enum st_lsm6dsx_sensor_id { ____Placeholder_st_lsm6dsx_sensor_id } st_lsm6dsx_sensor_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ST_LSM6DSX_ID_EXT0 ; 
 int ST_LSM6DSX_MAX_SLV_NUM ; 
 struct st_lsm6dsx_sensor* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * st_lsm6dsx_ext_dev_table ; 
 int /*<<< orphan*/  FUNC2 (struct st_lsm6dsx_hw*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (struct st_lsm6dsx_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct st_lsm6dsx_sensor*) ; 

int FUNC5(struct st_lsm6dsx_hw *hw, const char *name)
{
	enum st_lsm6dsx_sensor_id id = ST_LSM6DSX_ID_EXT0;
	struct st_lsm6dsx_sensor *sensor;
	int err, i, num_ext_dev = 0;
	u8 i2c_addr = 0;

	for (i = 0; i < FUNC0(st_lsm6dsx_ext_dev_table); i++) {
		err = FUNC3(hw, &i2c_addr,
					&st_lsm6dsx_ext_dev_table[i]);
		if (err == -ENODEV)
			continue;
		else if (err < 0)
			return err;

		hw->iio_devs[id] = FUNC2(hw, id,
						&st_lsm6dsx_ext_dev_table[i],
						i2c_addr, name);
		if (!hw->iio_devs[id])
			return -ENOMEM;

		sensor = FUNC1(hw->iio_devs[id]);
		err = FUNC4(sensor);
		if (err < 0)
			return err;

		if (++num_ext_dev >= ST_LSM6DSX_MAX_SLV_NUM)
			break;
		id++;
	}

	return 0;
}