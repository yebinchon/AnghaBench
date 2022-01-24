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
typedef  int /*<<< orphan*/  u32 ;
struct mxs_i2c_dev {scalar_t__ dev_type; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MXS_I2C_CTRL0 ; 
 int /*<<< orphan*/  MXS_I2C_CTRL0_PIO_MODE ; 
 int /*<<< orphan*/  MXS_I2C_CTRL0_RUN ; 
 scalar_t__ MXS_I2C_CTRL0_SET ; 
 scalar_t__ FUNC0 (struct mxs_i2c_dev*) ; 
 scalar_t__ MXS_I2C_V1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mxs_i2c_dev *i2c, u32 cmd,
					  u32 data)
{
	FUNC1(cmd, i2c->regs + MXS_I2C_CTRL0);

	if (i2c->dev_type == MXS_I2C_V1)
		FUNC1(MXS_I2C_CTRL0_PIO_MODE, i2c->regs + MXS_I2C_CTRL0_SET);

	FUNC1(data, i2c->regs + FUNC0(i2c));
	FUNC1(MXS_I2C_CTRL0_RUN, i2c->regs + MXS_I2C_CTRL0_SET);
}