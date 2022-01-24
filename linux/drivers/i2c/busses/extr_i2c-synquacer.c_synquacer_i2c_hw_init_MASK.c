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
struct synquacer_i2c {int speed_khz; scalar_t__ base; int /*<<< orphan*/  pclkrate; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned char SYNQUACER_I2C_CCR_EN ; 
 unsigned char SYNQUACER_I2C_CCR_FM ; 
 int /*<<< orphan*/  SYNQUACER_I2C_CLK_RATE_18M ; 
 unsigned char FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYNQUACER_I2C_REG_ADR ; 
 scalar_t__ SYNQUACER_I2C_REG_BC2R ; 
 scalar_t__ SYNQUACER_I2C_REG_BCR ; 
 scalar_t__ SYNQUACER_I2C_REG_CCR ; 
 scalar_t__ SYNQUACER_I2C_REG_CSR ; 
 scalar_t__ SYNQUACER_I2C_REG_FSR ; 
#define  SYNQUACER_I2C_SPEED_FM 129 
#define  SYNQUACER_I2C_SPEED_SM 128 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct synquacer_i2c *i2c)
{
	unsigned char ccr_cs, csr_cs;
	u32 rt = i2c->pclkrate;

	/* Set own Address */
	FUNC10(0, i2c->base + SYNQUACER_I2C_REG_ADR);

	/* Set PCLK frequency */
	FUNC10(FUNC0(i2c->pclkrate),
	       i2c->base + SYNQUACER_I2C_REG_FSR);

	switch (i2c->speed_khz) {
	case SYNQUACER_I2C_SPEED_FM:
		if (i2c->pclkrate <= SYNQUACER_I2C_CLK_RATE_18M) {
			ccr_cs = FUNC1(rt);
			csr_cs = FUNC5(rt);
		} else {
			ccr_cs = FUNC2(rt);
			csr_cs = FUNC6(rt);
		}

		/* Set Clock and enable, Set fast mode */
		FUNC10(ccr_cs | SYNQUACER_I2C_CCR_FM |
		       SYNQUACER_I2C_CCR_EN,
		       i2c->base + SYNQUACER_I2C_REG_CCR);
		FUNC10(csr_cs, i2c->base + SYNQUACER_I2C_REG_CSR);
		break;
	case SYNQUACER_I2C_SPEED_SM:
		if (i2c->pclkrate <= SYNQUACER_I2C_CLK_RATE_18M) {
			ccr_cs = FUNC3(rt);
			csr_cs = FUNC7(rt);
		} else {
			ccr_cs = FUNC4(rt);
			csr_cs = FUNC8(rt);
		}

		/* Set Clock and enable, Set standard mode */
		FUNC10(ccr_cs | SYNQUACER_I2C_CCR_EN,
		      i2c->base + SYNQUACER_I2C_REG_CCR);
		FUNC10(csr_cs, i2c->base + SYNQUACER_I2C_REG_CSR);
		break;
	default:
		FUNC9(1);
	}

	/* clear IRQ (INT=0, BER=0), Interrupt Disable */
	FUNC10(0, i2c->base + SYNQUACER_I2C_REG_BCR);
	FUNC10(0, i2c->base + SYNQUACER_I2C_REG_BC2R);
}