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
struct TYPE_2__ {scalar_t__ control; scalar_t__ ext_addr; scalar_t__ addr; scalar_t__ clock; scalar_t__ soft_reset; } ;
struct mv64xxx_i2c_data {int /*<<< orphan*/  state; TYPE_1__ reg_offsets; scalar_t__ reg_base; int /*<<< orphan*/  freq_n; int /*<<< orphan*/  freq_m; scalar_t__ offload_enabled; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_CONTROL ; 
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE ; 
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_INTR_MASK ; 
 scalar_t__ MV64XXX_I2C_REG_BRIDGE_TIMING ; 
 int MV64XXX_I2C_REG_CONTROL_STOP ; 
 int MV64XXX_I2C_REG_CONTROL_TWSIEN ; 
 int /*<<< orphan*/  MV64XXX_I2C_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct mv64xxx_i2c_data *drv_data)
{
	if (drv_data->offload_enabled) {
		FUNC2(0, drv_data->reg_base + MV64XXX_I2C_REG_BRIDGE_CONTROL);
		FUNC2(0, drv_data->reg_base + MV64XXX_I2C_REG_BRIDGE_TIMING);
		FUNC2(0, drv_data->reg_base +
			MV64XXX_I2C_REG_BRIDGE_INTR_CAUSE);
		FUNC2(0, drv_data->reg_base +
			MV64XXX_I2C_REG_BRIDGE_INTR_MASK);
	}

	FUNC2(0, drv_data->reg_base + drv_data->reg_offsets.soft_reset);
	FUNC2(FUNC0(drv_data->freq_m) | FUNC1(drv_data->freq_n),
		drv_data->reg_base + drv_data->reg_offsets.clock);
	FUNC2(0, drv_data->reg_base + drv_data->reg_offsets.addr);
	FUNC2(0, drv_data->reg_base + drv_data->reg_offsets.ext_addr);
	FUNC2(MV64XXX_I2C_REG_CONTROL_TWSIEN | MV64XXX_I2C_REG_CONTROL_STOP,
		drv_data->reg_base + drv_data->reg_offsets.control);
	drv_data->state = MV64XXX_I2C_STATE_IDLE;
}