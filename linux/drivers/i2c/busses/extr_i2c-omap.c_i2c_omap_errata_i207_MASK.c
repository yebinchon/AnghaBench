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
typedef  int u16 ;
struct omap_i2c_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int OMAP_I2C_STAT_BB ; 
 int OMAP_I2C_STAT_RDR ; 
 int /*<<< orphan*/  OMAP_I2C_STAT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_i2c_dev*,int) ; 
 int FUNC2 (struct omap_i2c_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct omap_i2c_dev *omap, u16 stat)
{
	/*
	 * I2C Errata(Errata Nos. OMAP2: 1.67, OMAP3: 1.8)
	 * Not applicable for OMAP4.
	 * Under certain rare conditions, RDR could be set again
	 * when the bus is busy, then ignore the interrupt and
	 * clear the interrupt.
	 */
	if (stat & OMAP_I2C_STAT_RDR) {
		/* Step 1: If RDR is set, clear it */
		FUNC1(omap, OMAP_I2C_STAT_RDR);

		/* Step 2: */
		if (!(FUNC2(omap, OMAP_I2C_STAT_REG)
						& OMAP_I2C_STAT_BB)) {

			/* Step 3: */
			if (FUNC2(omap, OMAP_I2C_STAT_REG)
						& OMAP_I2C_STAT_RDR) {
				FUNC1(omap, OMAP_I2C_STAT_RDR);
				FUNC0(omap->dev, "RDR when bus is busy.\n");
			}

		}
	}
}