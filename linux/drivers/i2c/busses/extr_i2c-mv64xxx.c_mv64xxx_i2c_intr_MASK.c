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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ control; scalar_t__ status; } ;
struct mv64xxx_i2c_data {int cntl_bits; int /*<<< orphan*/  lock; TYPE_1__ reg_offsets; scalar_t__ reg_base; scalar_t__ irq_clear_inverted; scalar_t__ offload_enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MV64XXX_I2C_REG_CONTROL_IFLG ; 
 int /*<<< orphan*/  FUNC0 (struct mv64xxx_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv64xxx_i2c_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv64xxx_i2c_data*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *dev_id)
{
	struct mv64xxx_i2c_data	*drv_data = dev_id;
	unsigned long	flags;
	u32		status;
	irqreturn_t	rc = IRQ_NONE;

	FUNC4(&drv_data->lock, flags);

	if (drv_data->offload_enabled)
		rc = FUNC2(drv_data);

	while (FUNC3(drv_data->reg_base + drv_data->reg_offsets.control) &
						MV64XXX_I2C_REG_CONTROL_IFLG) {
		status = FUNC3(drv_data->reg_base + drv_data->reg_offsets.status);
		FUNC1(drv_data, status);
		FUNC0(drv_data);

		if (drv_data->irq_clear_inverted)
			FUNC6(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_IFLG,
			       drv_data->reg_base + drv_data->reg_offsets.control);

		rc = IRQ_HANDLED;
	}
	FUNC5(&drv_data->lock, flags);

	return rc;
}