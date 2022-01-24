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
typedef  int /*<<< orphan*/  u8 ;
struct st_lsm6dsx_hw {int /*<<< orphan*/  regmap; TYPE_1__* settings; } ;
struct TYPE_2__ {int /*<<< orphan*/  reset_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_BDU_ADDR ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_BDU_MASK ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_BOOT_MASK ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_FIFO_FTH_IRQ_MASK ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_RESET_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct st_lsm6dsx_hw*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct st_lsm6dsx_hw*) ; 
 int FUNC5 (struct st_lsm6dsx_hw*) ; 

__attribute__((used)) static int FUNC6(struct st_lsm6dsx_hw *hw)
{
	u8 drdy_int_reg;
	int err;

	/* device sw reset */
	err = FUNC2(hw->regmap, hw->settings->reset_addr,
				 ST_LSM6DSX_REG_RESET_MASK,
				 FUNC0(ST_LSM6DSX_REG_RESET_MASK, 1));
	if (err < 0)
		return err;

	FUNC1(50);

	/* reload trimming parameter */
	err = FUNC2(hw->regmap, hw->settings->reset_addr,
				 ST_LSM6DSX_REG_BOOT_MASK,
				 FUNC0(ST_LSM6DSX_REG_BOOT_MASK, 1));
	if (err < 0)
		return err;

	FUNC1(50);

	/* enable Block Data Update */
	err = FUNC2(hw->regmap, ST_LSM6DSX_REG_BDU_ADDR,
				 ST_LSM6DSX_REG_BDU_MASK,
				 FUNC0(ST_LSM6DSX_REG_BDU_MASK, 1));
	if (err < 0)
		return err;

	/* enable FIFO watermak interrupt */
	err = FUNC3(hw, &drdy_int_reg);
	if (err < 0)
		return err;

	err = FUNC2(hw->regmap, drdy_int_reg,
				 ST_LSM6DSX_REG_FIFO_FTH_IRQ_MASK,
				 FUNC0(ST_LSM6DSX_REG_FIFO_FTH_IRQ_MASK,
					    1));
	if (err < 0)
		return err;

	err = FUNC5(hw);
	if (err < 0)
		return err;

	return FUNC4(hw);
}