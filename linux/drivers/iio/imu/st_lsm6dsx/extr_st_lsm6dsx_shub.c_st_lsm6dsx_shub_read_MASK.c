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
struct TYPE_4__ {int addr; } ;
struct st_lsm6dsx_sensor {TYPE_2__ ext_info; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {TYPE_1__* settings; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_3__ {struct st_lsm6dsx_shub_settings shub_settings; } ;

/* Variables and functions */
 int ST_LS6DSX_READ_OP_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct st_lsm6dsx_sensor*,int) ; 
 int FUNC3 (struct st_lsm6dsx_hw*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct st_lsm6dsx_hw*) ; 
 int FUNC5 (struct st_lsm6dsx_hw*,int,int*,int) ; 

__attribute__((used)) static int
FUNC6(struct st_lsm6dsx_sensor *sensor, u8 addr,
		     u8 *data, int len)
{
	const struct st_lsm6dsx_shub_settings *hub_settings;
	struct st_lsm6dsx_hw *hw = sensor->hw;
	u8 config[3], slv_addr;
	int err;

	hub_settings = &hw->settings->shub_settings;
	slv_addr = FUNC0(0, hub_settings->slv0_addr);

	config[0] = (sensor->ext_info.addr << 1) | 1;
	config[1] = addr;
	config[2] = len & ST_LS6DSX_READ_OP_MASK;

	err = FUNC5(hw, slv_addr, config,
					sizeof(config));
	if (err < 0)
		return err;

	err = FUNC2(sensor, true);
	if (err < 0)
		return err;

	FUNC4(hw);

	err = FUNC3(hw, hub_settings->shub_out, data,
				       len & ST_LS6DSX_READ_OP_MASK);

	FUNC2(sensor, false);

	FUNC1(config, 0, sizeof(config));
	return FUNC5(hw, slv_addr, config,
					 sizeof(config));
}