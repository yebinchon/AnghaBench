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
struct omap_i2c_dev {int cmd_err; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int OMAP_I2C_STAT_AL ; 
 int OMAP_I2C_STAT_NACK ; 
 int /*<<< orphan*/  OMAP_I2C_STAT_REG ; 
 int OMAP_I2C_STAT_XDR ; 
 int OMAP_I2C_STAT_XRDY ; 
 int OMAP_I2C_STAT_XUDF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_i2c_dev*,int) ; 
 int FUNC3 (struct omap_i2c_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct omap_i2c_dev *omap)
{
	unsigned long timeout = 10000;
	u16 stat;

	do {
		stat = FUNC3(omap, OMAP_I2C_STAT_REG);
		if (stat & OMAP_I2C_STAT_XUDF)
			break;

		if (stat & (OMAP_I2C_STAT_NACK | OMAP_I2C_STAT_AL)) {
			FUNC2(omap, (OMAP_I2C_STAT_XRDY |
							OMAP_I2C_STAT_XDR));
			if (stat & OMAP_I2C_STAT_NACK) {
				omap->cmd_err |= OMAP_I2C_STAT_NACK;
				FUNC2(omap, OMAP_I2C_STAT_NACK);
			}

			if (stat & OMAP_I2C_STAT_AL) {
				FUNC1(omap->dev, "Arbitration lost\n");
				omap->cmd_err |= OMAP_I2C_STAT_AL;
				FUNC2(omap, OMAP_I2C_STAT_AL);
			}

			return -EIO;
		}

		FUNC0();
	} while (--timeout);

	if (!timeout) {
		FUNC1(omap->dev, "timeout waiting on XUDF bit\n");
		return 0;
	}

	return 0;
}