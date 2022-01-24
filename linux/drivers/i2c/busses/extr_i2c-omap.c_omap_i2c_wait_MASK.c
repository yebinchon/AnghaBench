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
struct omap_i2c_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_I2C_IE_REG ; 
 int /*<<< orphan*/  OMAP_I2C_STAT_REG ; 
 int FUNC0 (struct omap_i2c_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct omap_i2c_dev *omap)
{
	u16 stat;
	u16 mask = FUNC0(omap, OMAP_I2C_IE_REG);
	int count = 0;

	do {
		stat = FUNC0(omap, OMAP_I2C_STAT_REG);
		count++;
	} while (!(stat & mask) && count < 5);
}