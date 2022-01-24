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
struct wmt_i2c_dev {scalar_t__ mode; scalar_t__ base; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CR_ENABLE ; 
 scalar_t__ I2C_MODE_STANDARD ; 
 int IMR_ENABLE_ALL ; 
 int ISR_WRITE_ALL ; 
 int MCR_APB_166M ; 
 scalar_t__ REG_CR ; 
 scalar_t__ REG_CSR ; 
 scalar_t__ REG_IMR ; 
 scalar_t__ REG_ISR ; 
 scalar_t__ REG_MCR ; 
 scalar_t__ REG_TR ; 
 int FUNC0 (int) ; 
 int TR_HS ; 
 int TR_STD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct wmt_i2c_dev *i2c_dev)
{
	int err;

	err = FUNC2(i2c_dev->clk);
	if (err) {
		FUNC4(i2c_dev->dev, "failed to enable clock\n");
		return err;
	}

	err = FUNC3(i2c_dev->clk, 20000000);
	if (err) {
		FUNC4(i2c_dev->dev, "failed to set clock = 20Mhz\n");
		FUNC1(i2c_dev->clk);
		return err;
	}

	FUNC6(0, i2c_dev->base + REG_CR);
	FUNC6(MCR_APB_166M, i2c_dev->base + REG_MCR);
	FUNC6(ISR_WRITE_ALL, i2c_dev->base + REG_ISR);
	FUNC6(IMR_ENABLE_ALL, i2c_dev->base + REG_IMR);
	FUNC6(CR_ENABLE, i2c_dev->base + REG_CR);
	FUNC5(i2c_dev->base + REG_CSR);		/* read clear */
	FUNC6(ISR_WRITE_ALL, i2c_dev->base + REG_ISR);

	if (i2c_dev->mode == I2C_MODE_STANDARD)
		FUNC6(FUNC0(128) | TR_STD, i2c_dev->base + REG_TR);
	else
		FUNC6(FUNC0(128) | TR_HS, i2c_dev->base + REG_TR);

	return 0;
}