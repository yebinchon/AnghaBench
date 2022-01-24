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
struct bmc150_magn_data {int /*<<< orphan*/  regmap; } ;
typedef  enum bmc150_magn_power_modes { ____Placeholder_bmc150_magn_power_modes } bmc150_magn_power_modes ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_MAGN_MASK_OPMODE ; 
 int /*<<< orphan*/  BMC150_MAGN_MASK_POWER_CTL ; 
 int BMC150_MAGN_MODE_NORMAL ; 
 int BMC150_MAGN_MODE_SLEEP ; 
#define  BMC150_MAGN_POWER_MODE_NORMAL 130 
#define  BMC150_MAGN_POWER_MODE_SLEEP 129 
#define  BMC150_MAGN_POWER_MODE_SUSPEND 128 
 int /*<<< orphan*/  BMC150_MAGN_REG_OPMODE_ODR ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_POWER ; 
 int BMC150_MAGN_SHIFT_OPMODE ; 
 int BMC150_MAGN_START_UP_TIME_MS ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct bmc150_magn_data *data,
				      enum bmc150_magn_power_modes mode,
				      bool state)
{
	int ret;

	switch (mode) {
	case BMC150_MAGN_POWER_MODE_SUSPEND:
		ret = FUNC0(data->regmap, BMC150_MAGN_REG_POWER,
					 BMC150_MAGN_MASK_POWER_CTL, !state);
		if (ret < 0)
			return ret;
		FUNC1(BMC150_MAGN_START_UP_TIME_MS * 1000, 20000);
		return 0;
	case BMC150_MAGN_POWER_MODE_SLEEP:
		return FUNC0(data->regmap,
					  BMC150_MAGN_REG_OPMODE_ODR,
					  BMC150_MAGN_MASK_OPMODE,
					  BMC150_MAGN_MODE_SLEEP <<
					  BMC150_MAGN_SHIFT_OPMODE);
	case BMC150_MAGN_POWER_MODE_NORMAL:
		return FUNC0(data->regmap,
					  BMC150_MAGN_REG_OPMODE_ODR,
					  BMC150_MAGN_MASK_OPMODE,
					  BMC150_MAGN_MODE_NORMAL <<
					  BMC150_MAGN_SHIFT_OPMODE);
	}

	return -EINVAL;
}