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
struct axxia_i2c_dev {int bus_clk_rate; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c_clk; } ;

/* Variables and functions */
 scalar_t__ GLOBAL_CONTROL ; 
 scalar_t__ INTERRUPT_ENABLE ; 
 scalar_t__ SCL_HIGH_PERIOD ; 
 scalar_t__ SCL_LOW_PERIOD ; 
 int SCL_WAIT_TIMEOUT_NS ; 
 scalar_t__ SDA_HOLD_TIME ; 
 scalar_t__ SDA_SETUP_TIME ; 
 scalar_t__ SOFT_RESET ; 
 scalar_t__ SPIKE_FLTR_LEN ; 
 scalar_t__ TIMER_CLOCK_DIV ; 
 scalar_t__ WAIT_TIMER_CONTROL ; 
 int WT_EN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct axxia_i2c_dev*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct axxia_i2c_dev *idev)
{
	u32 divisor = FUNC1(idev->i2c_clk) / idev->bus_clk_rate;
	u32 clk_mhz = FUNC1(idev->i2c_clk) / 1000000;
	u32 t_setup;
	u32 t_high, t_low;
	u32 tmo_clk;
	u32 prescale;
	unsigned long timeout;

	FUNC2(idev->dev, "rate=%uHz per_clk=%uMHz -> ratio=1:%u\n",
		idev->bus_clk_rate, clk_mhz, divisor);

	/* Reset controller */
	FUNC9(0x01, idev->base + SOFT_RESET);
	timeout = jiffies + FUNC5(100);
	while (FUNC7(idev->base + SOFT_RESET) & 1) {
		if (FUNC8(jiffies, timeout)) {
			FUNC3(idev->dev, "Soft reset failed\n");
			break;
		}
	}

	/* Enable Master Mode */
	FUNC9(0x1, idev->base + GLOBAL_CONTROL);

	if (idev->bus_clk_rate <= 100000) {
		/* Standard mode SCL 50/50, tSU:DAT = 250 ns */
		t_high = divisor * 1 / 2;
		t_low = divisor * 1 / 2;
		t_setup = FUNC6(250, clk_mhz);
	} else {
		/* Fast mode SCL 33/66, tSU:DAT = 100 ns */
		t_high = divisor * 1 / 3;
		t_low = divisor * 2 / 3;
		t_setup = FUNC6(100, clk_mhz);
	}

	/* SCL High Time */
	FUNC9(t_high, idev->base + SCL_HIGH_PERIOD);
	/* SCL Low Time */
	FUNC9(t_low, idev->base + SCL_LOW_PERIOD);
	/* SDA Setup Time */
	FUNC9(t_setup, idev->base + SDA_SETUP_TIME);
	/* SDA Hold Time, 300ns */
	FUNC9(FUNC6(300, clk_mhz), idev->base + SDA_HOLD_TIME);
	/* Filter <50ns spikes */
	FUNC9(FUNC6(50, clk_mhz), idev->base + SPIKE_FLTR_LEN);

	/* Configure Time-Out Registers */
	tmo_clk = FUNC6(SCL_WAIT_TIMEOUT_NS, clk_mhz);

	/* Find prescaler value that makes tmo_clk fit in 15-bits counter. */
	for (prescale = 0; prescale < 15; ++prescale) {
		if (tmo_clk <= 0x7fff)
			break;
		tmo_clk >>= 1;
	}
	if (tmo_clk > 0x7fff)
		tmo_clk = 0x7fff;

	/* Prescale divider (log2) */
	FUNC9(prescale, idev->base + TIMER_CLOCK_DIV);
	/* Timeout in divided clocks */
	FUNC9(WT_EN | FUNC0(tmo_clk), idev->base + WAIT_TIMER_CONTROL);

	/* Mask all master interrupt bits */
	FUNC4(idev, ~0);

	/* Interrupt enable */
	FUNC9(0x01, idev->base + INTERRUPT_ENABLE);

	return 0;
}