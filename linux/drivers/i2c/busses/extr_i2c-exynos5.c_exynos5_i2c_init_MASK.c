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
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct exynos5_i2c {scalar_t__ op_clock; scalar_t__ regs; TYPE_1__ adap; } ;

/* Variables and functions */
 scalar_t__ HSI2C_ADDR ; 
 int HSI2C_AUTO_MODE ; 
 scalar_t__ HSI2C_CONF ; 
 scalar_t__ HSI2C_CTL ; 
 int HSI2C_FUNC_MODE_I2C ; 
 int HSI2C_HS_MODE ; 
 scalar_t__ HSI2C_HS_TX_CLOCK ; 
 int HSI2C_MASTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HSI2C_TIMEOUT ; 
 int HSI2C_TIMEOUT_EN ; 
 scalar_t__ HSI2C_TRAILIG_CTL ; 
 int HSI2C_TRAILING_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct exynos5_i2c *i2c)
{
	u32 i2c_conf = FUNC2(i2c->regs + HSI2C_CONF);
	u32 i2c_timeout = FUNC2(i2c->regs + HSI2C_TIMEOUT);

	/* Clear to disable Timeout */
	i2c_timeout &= ~HSI2C_TIMEOUT_EN;
	FUNC3(i2c_timeout, i2c->regs + HSI2C_TIMEOUT);

	FUNC3((HSI2C_FUNC_MODE_I2C | HSI2C_MASTER),
					i2c->regs + HSI2C_CTL);
	FUNC3(HSI2C_TRAILING_COUNT, i2c->regs + HSI2C_TRAILIG_CTL);

	if (i2c->op_clock >= HSI2C_HS_TX_CLOCK) {
		FUNC3(FUNC0(FUNC1(i2c->adap.nr)),
					i2c->regs + HSI2C_ADDR);
		i2c_conf |= HSI2C_HS_MODE;
	}

	FUNC3(i2c_conf | HSI2C_AUTO_MODE, i2c->regs + HSI2C_CONF);
}