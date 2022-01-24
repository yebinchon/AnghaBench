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
struct imx_i2c_struct {unsigned int i2csr; int /*<<< orphan*/  queue; TYPE_1__* hwdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned int i2sr_clr_opcode; } ;

/* Variables and functions */
 unsigned int I2SR_IIF ; 
 int /*<<< orphan*/  IMX_I2C_I2SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (struct imx_i2c_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct imx_i2c_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct imx_i2c_struct *i2c_imx = dev_id;
	unsigned int temp;

	temp = FUNC0(i2c_imx, IMX_I2C_I2SR);
	if (temp & I2SR_IIF) {
		/* save status register */
		i2c_imx->i2csr = temp;
		temp &= ~I2SR_IIF;
		temp |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
		FUNC1(temp, i2c_imx, IMX_I2C_I2SR);
		FUNC2(&i2c_imx->queue);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}