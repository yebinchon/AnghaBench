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
typedef  int u16 ;
struct nmk_i2c_dev {int sm; int clk_freq; int tft; int rft; scalar_t__ virtbase; TYPE_1__* adev; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (unsigned long long,int) ; 
 scalar_t__ I2C_BRCR ; 
 scalar_t__ I2C_CR ; 
 scalar_t__ I2C_DMAR ; 
#define  I2C_FREQ_MODE_FAST 131 
#define  I2C_FREQ_MODE_FAST_PLUS 130 
#define  I2C_FREQ_MODE_HIGH_SPEED 129 
#define  I2C_FREQ_MODE_STANDARD 128 
 scalar_t__ I2C_HSMCR ; 
 scalar_t__ I2C_RFTR ; 
 scalar_t__ I2C_SCR ; 
 scalar_t__ I2C_TFTR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int const,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct nmk_i2c_dev *dev)
{
	u32 brcr1, brcr2;
	u32 i2c_clk, div;
	u32 ns;
	u16 slsu;

	FUNC5(0x0, dev->virtbase + I2C_CR);
	FUNC5(0x0, dev->virtbase + I2C_HSMCR);
	FUNC5(0x0, dev->virtbase + I2C_TFTR);
	FUNC5(0x0, dev->virtbase + I2C_RFTR);
	FUNC5(0x0, dev->virtbase + I2C_DMAR);

	i2c_clk = FUNC2(dev->clk);

	/*
	 * set the slsu:
	 *
	 * slsu defines the data setup time after SCL clock
	 * stretching in terms of i2c clk cycles + 1 (zero means
	 * "wait one cycle"), the needed setup time for the three
	 * modes are 250ns, 100ns, 10ns respectively.
	 *
	 * As the time for one cycle T in nanoseconds is
	 * T = (1/f) * 1000000000 =>
	 * slsu = cycles / (1000000000 / f) + 1
	 */
	ns = FUNC1(1000000000ULL, i2c_clk);
	switch (dev->sm) {
	case I2C_FREQ_MODE_FAST:
	case I2C_FREQ_MODE_FAST_PLUS:
		slsu = FUNC0(100, ns); /* Fast */
		break;
	case I2C_FREQ_MODE_HIGH_SPEED:
		slsu = FUNC0(10, ns); /* High */
		break;
	case I2C_FREQ_MODE_STANDARD:
	default:
		slsu = FUNC0(250, ns); /* Standard */
		break;
	}
	slsu += 1;

	FUNC3(&dev->adev->dev, "calculated SLSU = %04x\n", slsu);
	FUNC5(slsu << 16, dev->virtbase + I2C_SCR);

	/*
	 * The spec says, in case of std. mode the divider is
	 * 2 whereas it is 3 for fast and fastplus mode of
	 * operation. TODO - high speed support.
	 */
	div = (dev->clk_freq > 100000) ? 3 : 2;

	/*
	 * generate the mask for baud rate counters. The controller
	 * has two baud rate counters. One is used for High speed
	 * operation, and the other is for std, fast mode, fast mode
	 * plus operation. Currently we do not supprt high speed mode
	 * so set brcr1 to 0.
	 */
	brcr1 = 0 << 16;
	brcr2 = (i2c_clk/(dev->clk_freq * div)) & 0xffff;

	/* set the baud rate counter register */
	FUNC5((brcr1 | brcr2), dev->virtbase + I2C_BRCR);

	/*
	 * set the speed mode. Currently we support
	 * only standard and fast mode of operation
	 * TODO - support for fast mode plus (up to 1Mb/s)
	 * and high speed (up to 3.4 Mb/s)
	 */
	if (dev->sm > I2C_FREQ_MODE_FAST) {
		FUNC4(&dev->adev->dev,
			"do not support this mode defaulting to std. mode\n");
		brcr2 = i2c_clk/(100000 * 2) & 0xffff;
		FUNC5((brcr1 | brcr2), dev->virtbase + I2C_BRCR);
		FUNC5(I2C_FREQ_MODE_STANDARD << 4,
				dev->virtbase + I2C_CR);
	}
	FUNC5(dev->sm << 4, dev->virtbase + I2C_CR);

	/* set the Tx and Rx FIFO threshold */
	FUNC5(dev->tft, dev->virtbase + I2C_TFTR);
	FUNC5(dev->rft, dev->virtbase + I2C_RFTR);
}