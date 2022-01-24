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
struct dce_i2c_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_I2C_CONTROL ; 
 int /*<<< orphan*/  DC_I2C_SW_STATUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct dce_i2c_hw *dce_i2c_hw)
{
	FUNC0(DC_I2C_CONTROL,
		     DC_I2C_SW_STATUS_RESET, 1,
		     DC_I2C_SW_STATUS_RESET, 1);
}