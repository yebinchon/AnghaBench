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
typedef  int u8 ;
struct st_lsm6dsx_shub_settings {int /*<<< orphan*/  shub_out; int /*<<< orphan*/  slv0_addr; } ;
struct st_lsm6dsx_sensor {int dummy; } ;
struct st_lsm6dsx_hw {int /*<<< orphan*/ * iio_devs; TYPE_1__* settings; } ;
struct TYPE_4__ {int addr; int val; } ;
struct st_lsm6dsx_ext_dev_settings {int* i2c_addr; TYPE_2__ wai; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_3__ {struct st_lsm6dsx_shub_settings shub_settings; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int ENODEV ; 
 size_t ST_LSM6DSX_ID_ACC ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct st_lsm6dsx_sensor* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct st_lsm6dsx_sensor*,int) ; 
 int FUNC5 (struct st_lsm6dsx_hw*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct st_lsm6dsx_hw*) ; 
 int FUNC7 (struct st_lsm6dsx_hw*,int,int*,int) ; 

__attribute__((used)) static int
FUNC8(struct st_lsm6dsx_hw *hw, u8 *i2c_addr,
			  const struct st_lsm6dsx_ext_dev_settings *settings)
{
	const struct st_lsm6dsx_shub_settings *hub_settings;
	struct st_lsm6dsx_sensor *sensor;
	u8 config[3], data, slv_addr;
	bool found = false;
	int i, err;

	hub_settings = &hw->settings->shub_settings;
	slv_addr = FUNC1(0, hub_settings->slv0_addr);
	sensor = FUNC2(hw->iio_devs[ST_LSM6DSX_ID_ACC]);

	for (i = 0; i < FUNC0(settings->i2c_addr); i++) {
		if (!settings->i2c_addr[i])
			continue;

		/* read wai slave register */
		config[0] = (settings->i2c_addr[i] << 1) | 0x1;
		config[1] = settings->wai.addr;
		config[2] = 0x1;

		err = FUNC7(hw, slv_addr, config,
						sizeof(config));
		if (err < 0)
			return err;

		err = FUNC4(sensor, true);
		if (err < 0)
			return err;

		FUNC6(hw);

		err = FUNC5(hw,
					       hub_settings->shub_out,
					       &data, sizeof(data));

		FUNC4(sensor, false);

		if (err < 0)
			return err;

		if (data != settings->wai.val)
			continue;

		*i2c_addr = settings->i2c_addr[i];
		found = true;
		break;
	}

	/* reset SLV0 channel */
	FUNC3(config, 0, sizeof(config));
	err = FUNC7(hw, slv_addr, config,
					sizeof(config));
	if (err < 0)
		return err;

	return found ? 0 : -ENODEV;
}