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
struct TYPE_4__ {scalar_t__ addr; } ;
struct st_lsm6dsx_shub_settings {TYPE_2__ master_en; } ;
struct st_lsm6dsx_hw {int irq; int /*<<< orphan*/ * iio_devs; struct device* dev; TYPE_1__* settings; struct regmap* regmap; void* buff; int /*<<< orphan*/  page_lock; int /*<<< orphan*/  conf_lock; int /*<<< orphan*/  fifo_lock; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct st_lsm6dsx_shub_settings shub_settings; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ST_LSM6DSX_BUFF_SIZE ; 
 int ST_LSM6DSX_ID_EXT0 ; 
 int ST_LSM6DSX_ID_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,void*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct st_lsm6dsx_hw*,int,char const*) ; 
 int FUNC5 (struct st_lsm6dsx_hw*,int,char const**) ; 
 int FUNC6 (struct st_lsm6dsx_hw*) ; 
 int FUNC7 (struct st_lsm6dsx_hw*) ; 
 int FUNC8 (struct st_lsm6dsx_hw*,char const*) ; 

int FUNC9(struct device *dev, int irq, int hw_id,
		     struct regmap *regmap)
{
	const struct st_lsm6dsx_shub_settings *hub_settings;
	struct st_lsm6dsx_hw *hw;
	const char *name = NULL;
	int i, err;

	hw = FUNC2(dev, sizeof(*hw), GFP_KERNEL);
	if (!hw)
		return -ENOMEM;

	FUNC0(dev, (void *)hw);

	FUNC3(&hw->fifo_lock);
	FUNC3(&hw->conf_lock);
	FUNC3(&hw->page_lock);

	hw->buff = FUNC2(dev, ST_LSM6DSX_BUFF_SIZE, GFP_KERNEL);
	if (!hw->buff)
		return -ENOMEM;

	hw->dev = dev;
	hw->irq = irq;
	hw->regmap = regmap;

	err = FUNC5(hw, hw_id, &name);
	if (err < 0)
		return err;

	for (i = 0; i < ST_LSM6DSX_ID_EXT0; i++) {
		hw->iio_devs[i] = FUNC4(hw, i, name);
		if (!hw->iio_devs[i])
			return -ENOMEM;
	}

	err = FUNC7(hw);
	if (err < 0)
		return err;

	hub_settings = &hw->settings->shub_settings;
	if (hub_settings->master_en.addr) {
		err = FUNC8(hw, name);
		if (err < 0)
			return err;
	}

	if (hw->irq > 0) {
		err = FUNC6(hw);
		if (err < 0)
			return err;
	}

	for (i = 0; i < ST_LSM6DSX_ID_MAX; i++) {
		if (!hw->iio_devs[i])
			continue;

		err = FUNC1(hw->dev, hw->iio_devs[i]);
		if (err)
			return err;
	}

	return 0;
}