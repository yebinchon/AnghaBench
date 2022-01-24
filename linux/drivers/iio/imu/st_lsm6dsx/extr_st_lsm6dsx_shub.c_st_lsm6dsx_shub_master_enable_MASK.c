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
struct TYPE_4__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct st_lsm6dsx_shub_settings {TYPE_2__ master_en; } ;
struct st_lsm6dsx_sensor {struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {int /*<<< orphan*/  page_lock; int /*<<< orphan*/  regmap; TYPE_1__* settings; } ;
struct TYPE_3__ {struct st_lsm6dsx_shub_settings shub_settings; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct st_lsm6dsx_sensor*,int) ; 
 int FUNC5 (struct st_lsm6dsx_hw*,int) ; 

__attribute__((used)) static int FUNC6(struct st_lsm6dsx_sensor *sensor,
					 bool enable)
{
	const struct st_lsm6dsx_shub_settings *hub_settings;
	struct st_lsm6dsx_hw *hw = sensor->hw;
	unsigned int data;
	int err;

	/* enable acc sensor as trigger */
	err = FUNC4(sensor, enable);
	if (err < 0)
		return err;

	FUNC1(&hw->page_lock);

	hub_settings = &hw->settings->shub_settings;
	err = FUNC5(hw, true);
	if (err < 0)
		goto out;

	data = FUNC0(enable, hub_settings->master_en.mask);
	err = FUNC3(hw->regmap, hub_settings->master_en.addr,
				 hub_settings->master_en.mask, data);

	FUNC5(hw, false);
out:
	FUNC2(&hw->page_lock);

	return err;
}