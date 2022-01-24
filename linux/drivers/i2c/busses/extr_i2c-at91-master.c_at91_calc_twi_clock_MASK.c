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
struct i2c_timings {int bus_freq_hz; int sda_hold_ns; } ;
struct at91_twi_pdata {int clk_offset; int clk_max_div; scalar_t__ has_hold_field; } ;
struct at91_twi_dev {int twi_cwgr_reg; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; struct at91_twi_pdata* pdata; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AT91_TWI_CWGR_HOLD_MAX ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct i2c_timings*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct at91_twi_dev *dev)
{
	int ckdiv, cdiv, div, hold = 0;
	struct at91_twi_pdata *pdata = dev->pdata;
	int offset = pdata->clk_offset;
	int max_ckdiv = pdata->clk_max_div;
	struct i2c_timings timings, *t = &timings;

	FUNC6(dev->dev, t, true);

	div = FUNC7(0, (int)FUNC1(FUNC2(dev->clk),
				       2 * t->bus_freq_hz) - offset);
	ckdiv = FUNC5(div >> 8);
	cdiv = div >> ckdiv;

	if (ckdiv > max_ckdiv) {
		FUNC4(dev->dev, "%d exceeds ckdiv max value which is %d.\n",
			 ckdiv, max_ckdiv);
		ckdiv = max_ckdiv;
		cdiv = 255;
	}

	if (pdata->has_hold_field) {
		/*
		 * hold time = HOLD + 3 x T_peripheral_clock
		 * Use clk rate in kHz to prevent overflows when computing
		 * hold.
		 */
		hold = FUNC1(t->sda_hold_ns
				    * (FUNC2(dev->clk) / 1000), 1000000);
		hold -= 3;
		if (hold < 0)
			hold = 0;
		if (hold > AT91_TWI_CWGR_HOLD_MAX) {
			FUNC4(dev->dev,
				 "HOLD field set to its maximum value (%d instead of %d)\n",
				 AT91_TWI_CWGR_HOLD_MAX, hold);
			hold = AT91_TWI_CWGR_HOLD_MAX;
		}
	}

	dev->twi_cwgr_reg = (ckdiv << 16) | (cdiv << 8) | cdiv
			    | FUNC0(hold);

	FUNC3(dev->dev, "cdiv %d ckdiv %d hold %d (%d ns)\n",
		cdiv, ckdiv, hold, t->sda_hold_ns);
}