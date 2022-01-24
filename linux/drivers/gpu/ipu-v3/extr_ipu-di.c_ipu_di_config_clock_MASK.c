#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_4__ {int pixelclock; } ;
struct ipu_di_signal_cfg {int clkflags; TYPE_2__ mode; } ;
struct ipu_di {struct clk* clk_di_pixel; struct clk* clk_di; struct clk* clk_ipu; TYPE_1__* ipu; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  DI_BS_CLKGEN0 ; 
 int /*<<< orphan*/  DI_BS_CLKGEN1 ; 
 int /*<<< orphan*/  DI_GENERAL ; 
 unsigned int DI_GEN_DI_CLK_EXT ; 
 int IPU_DI_CLKMODE_EXT ; 
 int IPU_DI_CLKMODE_SYNC ; 
 unsigned int FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,unsigned int,unsigned int,...) ; 
 unsigned int FUNC5 (struct ipu_di*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipu_di*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ipu_di *di,
	const struct ipu_di_signal_cfg *sig)
{
	struct clk *clk;
	unsigned clkgen0;
	uint32_t val;

	if (sig->clkflags & IPU_DI_CLKMODE_EXT) {
		/*
		 * CLKMODE_EXT means we must use the DI clock: this is
		 * needed for things like LVDS which needs to feed the
		 * DI and LDB with the same pixel clock.
		 */
		clk = di->clk_di;

		if (sig->clkflags & IPU_DI_CLKMODE_SYNC) {
			/*
			 * CLKMODE_SYNC means that we want the DI to be
			 * clocked at the same rate as the parent clock.
			 * This is needed (eg) for LDB which needs to be
			 * fed with the same pixel clock.  We assume that
			 * the LDB clock has already been set correctly.
			 */
			clkgen0 = 1 << 4;
		} else {
			/*
			 * We can use the divider.  We should really have
			 * a flag here indicating whether the bridge can
			 * cope with a fractional divider or not.  For the
			 * time being, let's go for simplicitly and
			 * reliability.
			 */
			unsigned long in_rate;
			unsigned div;

			FUNC3(clk, sig->mode.pixelclock);

			in_rate = FUNC2(clk);
			div = FUNC0(in_rate, sig->mode.pixelclock);
			div = FUNC1(div, 1U, 255U);

			clkgen0 = div << 4;
		}
	} else {
		/*
		 * For other interfaces, we can arbitarily select between
		 * the DI specific clock and the internal IPU clock.  See
		 * DI_GENERAL bit 20.  We select the IPU clock if it can
		 * give us a clock rate within 1% of the requested frequency,
		 * otherwise we use the DI clock.
		 */
		unsigned long rate, clkrate;
		unsigned div, error;

		clkrate = FUNC2(di->clk_ipu);
		div = FUNC0(clkrate, sig->mode.pixelclock);
		div = FUNC1(div, 1U, 255U);
		rate = clkrate / div;

		error = rate / (sig->mode.pixelclock / 1000);

		FUNC4(di->ipu->dev, "  IPU clock can give %lu with divider %u, error %d.%u%%\n",
			rate, div, (signed)(error - 1000) / 10, error % 10);

		/* Allow a 1% error */
		if (error < 1010 && error >= 990) {
			clk = di->clk_ipu;

			clkgen0 = div << 4;
		} else {
			unsigned long in_rate;
			unsigned div;

			clk = di->clk_di;

			FUNC3(clk, sig->mode.pixelclock);

			in_rate = FUNC2(clk);
			div = FUNC0(in_rate, sig->mode.pixelclock);
			div = FUNC1(div, 1U, 255U);

			clkgen0 = div << 4;
		}
	}

	di->clk_di_pixel = clk;

	/* Set the divider */
	FUNC6(di, clkgen0, DI_BS_CLKGEN0);

	/*
	 * Set the high/low periods.  Bits 24:16 give us the falling edge,
	 * and bits 8:0 give the rising edge.  LSB is fraction, and is
	 * based on the divider above.  We want a 50% duty cycle, so set
	 * the falling edge to be half the divider.
	 */
	FUNC6(di, (clkgen0 >> 4) << 16, DI_BS_CLKGEN1);

	/* Finally select the input clock */
	val = FUNC5(di, DI_GENERAL) & ~DI_GEN_DI_CLK_EXT;
	if (clk == di->clk_di)
		val |= DI_GEN_DI_CLK_EXT;
	FUNC6(di, val, DI_GENERAL);

	FUNC4(di->ipu->dev, "Want %luHz IPU %luHz DI %luHz using %s, %luHz\n",
		sig->mode.pixelclock,
		FUNC2(di->clk_ipu),
		FUNC2(di->clk_di),
		clk == di->clk_di ? "DI" : "IPU",
		FUNC2(di->clk_di_pixel) / (clkgen0 >> 4));
}