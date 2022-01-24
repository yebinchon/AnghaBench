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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pxa_i2c {int slave_addr; int fm_mask; int hs_mask; TYPE_1__ adap; scalar_t__ high_mode; scalar_t__ fast_mode; scalar_t__ reg_isar; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_I2C_PXA_SLAVE ; 
 int I2C_ICR_INIT ; 
 int I2C_ISR_INIT ; 
 int ICR_ALDIE ; 
 int ICR_IUE ; 
 int ICR_SADIE ; 
 int ICR_SSDIE ; 
 int ICR_UR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct pxa_i2c *i2c)
{
	FUNC7("Resetting I2C Controller Unit\n");

	/* abort any transfer currently under way */
	FUNC5(i2c);

	/* reset according to 9.8 */
	FUNC10(ICR_UR, FUNC1(i2c));
	FUNC10(I2C_ISR_INIT, FUNC3(i2c));
	FUNC10(FUNC8(FUNC1(i2c)) & ~ICR_UR, FUNC1(i2c));

	if (i2c->reg_isar && FUNC0(CONFIG_I2C_PXA_SLAVE))
		FUNC10(i2c->slave_addr, FUNC2(i2c));

	/* set control register values */
	FUNC10(I2C_ICR_INIT | (i2c->fast_mode ? i2c->fm_mask : 0), FUNC1(i2c));
	FUNC10(FUNC8(FUNC1(i2c)) | (i2c->high_mode ? i2c->hs_mask : 0), FUNC1(i2c));

#ifdef CONFIG_I2C_PXA_SLAVE
	dev_info(&i2c->adap.dev, "Enabling slave mode\n");
	writel(readl(_ICR(i2c)) | ICR_SADIE | ICR_ALDIE | ICR_SSDIE, _ICR(i2c));
#endif

	FUNC6(i2c, 0);

	/* enable unit */
	FUNC10(FUNC8(FUNC1(i2c)) | ICR_IUE, FUNC1(i2c));
	FUNC9(100);
}