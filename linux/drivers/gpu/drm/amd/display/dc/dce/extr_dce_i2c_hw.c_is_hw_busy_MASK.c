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
typedef  scalar_t__ uint32_t ;
struct dce_i2c_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ DC_I2C_STATUS__DC_I2C_STATUS_IDLE ; 
 int /*<<< orphan*/  DC_I2C_SW_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct dce_i2c_hw*) ; 

__attribute__((used)) static bool FUNC2(struct dce_i2c_hw *dce_i2c_hw)
{
	uint32_t i2c_sw_status = 0;

	FUNC0(DC_I2C_SW_STATUS, DC_I2C_SW_STATUS, &i2c_sw_status);
	if (i2c_sw_status == DC_I2C_STATUS__DC_I2C_STATUS_IDLE)
		return false;

	if (FUNC1(dce_i2c_hw))
		return false;

	return true;
}