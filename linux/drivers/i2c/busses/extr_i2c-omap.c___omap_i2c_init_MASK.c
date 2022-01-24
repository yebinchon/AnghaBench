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
struct omap_i2c_dev {scalar_t__ rev; scalar_t__ iestate; scalar_t__ westate; scalar_t__ sclhstate; scalar_t__ scllstate; scalar_t__ pscstate; } ;

/* Variables and functions */
 scalar_t__ OMAP_I2C_CON_EN ; 
 int /*<<< orphan*/  OMAP_I2C_CON_REG ; 
 int /*<<< orphan*/  OMAP_I2C_IE_REG ; 
 int /*<<< orphan*/  OMAP_I2C_PSC_REG ; 
 scalar_t__ OMAP_I2C_REV_ON_3430_3530 ; 
 int /*<<< orphan*/  OMAP_I2C_SCLH_REG ; 
 int /*<<< orphan*/  OMAP_I2C_SCLL_REG ; 
 int /*<<< orphan*/  OMAP_I2C_WE_REG ; 
 int /*<<< orphan*/  FUNC0 (struct omap_i2c_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct omap_i2c_dev *omap)
{

	FUNC0(omap, OMAP_I2C_CON_REG, 0);

	/* Setup clock prescaler to obtain approx 12MHz I2C module clock: */
	FUNC0(omap, OMAP_I2C_PSC_REG, omap->pscstate);

	/* SCL low and high time values */
	FUNC0(omap, OMAP_I2C_SCLL_REG, omap->scllstate);
	FUNC0(omap, OMAP_I2C_SCLH_REG, omap->sclhstate);
	if (omap->rev >= OMAP_I2C_REV_ON_3430_3530)
		FUNC0(omap, OMAP_I2C_WE_REG, omap->westate);

	/* Take the I2C module out of reset: */
	FUNC0(omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);

	/*
	 * NOTE: right after setting CON_EN, STAT_BB could be 0 while the
	 * bus is busy. It will be changed to 1 on the next IP FCLK clock.
	 * udelay(1) will be enough to fix that.
	 */

	/*
	 * Don't write to this register if the IE state is 0 as it can
	 * cause deadlock.
	 */
	if (omap->iestate)
		FUNC0(omap, OMAP_I2C_IE_REG, omap->iestate);
}