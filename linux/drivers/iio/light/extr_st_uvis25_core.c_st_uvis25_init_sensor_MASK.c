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
struct st_uvis25_hw {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_UVIS25_REG_BDU_MASK ; 
 int /*<<< orphan*/  ST_UVIS25_REG_BOOT_MASK ; 
 int /*<<< orphan*/  ST_UVIS25_REG_CTRL1_ADDR ; 
 int /*<<< orphan*/  ST_UVIS25_REG_CTRL2_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct st_uvis25_hw *hw)
{
	int err;

	err = FUNC1(hw->regmap, ST_UVIS25_REG_CTRL2_ADDR,
				 ST_UVIS25_REG_BOOT_MASK, 1);
	if (err < 0)
		return err;

	FUNC0(2000);

	return FUNC1(hw->regmap, ST_UVIS25_REG_CTRL1_ADDR,
				  ST_UVIS25_REG_BDU_MASK, 1);
}