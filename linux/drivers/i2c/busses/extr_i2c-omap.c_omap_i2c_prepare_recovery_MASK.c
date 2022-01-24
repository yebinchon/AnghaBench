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
typedef  int u32 ;
struct omap_i2c_dev {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_I2C_SYSTEST_REG ; 
 int OMAP_I2C_SYSTEST_SCL_O ; 
 int OMAP_I2C_SYSTEST_SDA_O ; 
 int OMAP_I2C_SYSTEST_ST_EN ; 
 int OMAP_I2C_SYSTEST_TMODE_SHIFT ; 
 struct omap_i2c_dev* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct omap_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_i2c_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_adapter *adap)
{
	struct omap_i2c_dev *dev = FUNC0(adap);
	u32 reg;

	reg = FUNC1(dev, OMAP_I2C_SYSTEST_REG);
	/* enable test mode */
	reg |= OMAP_I2C_SYSTEST_ST_EN;
	/* select SDA/SCL IO mode */
	reg |= 3 << OMAP_I2C_SYSTEST_TMODE_SHIFT;
	/* set SCL to high-impedance state (reset value is 0) */
	reg |= OMAP_I2C_SYSTEST_SCL_O;
	/* set SDA to high-impedance state (reset value is 0) */
	reg |= OMAP_I2C_SYSTEST_SDA_O;
	FUNC2(dev, OMAP_I2C_SYSTEST_REG, reg);
}