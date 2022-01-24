#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct itd1000_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ fmax_rg; int vcorg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GVBB_I2C ; 
 int /*<<< orphan*/  PLLLOCK ; 
 int /*<<< orphan*/  VCO_CHP1_I2C ; 
 int FUNC1 (struct itd1000_state*,int /*<<< orphan*/ ) ; 
 TYPE_1__* itd1000_vcorg ; 
 int /*<<< orphan*/  FUNC2 (struct itd1000_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct itd1000_state *state, u32 freq_khz)
{
	u8 i;
	u8 gvbb_i2c     = FUNC1(state, GVBB_I2C) & 0xbf;
	u8 vco_chp1_i2c = FUNC1(state, VCO_CHP1_I2C) & 0x0f;
	u8 adcout;

	/* reserved bit again (reset ?) */
	FUNC2(state, GVBB_I2C, gvbb_i2c | (1 << 6));

	for (i = 0; i < FUNC0(itd1000_vcorg); i++) {
		if (freq_khz < itd1000_vcorg[i].fmax_rg) {
			FUNC2(state, VCO_CHP1_I2C, vco_chp1_i2c | (itd1000_vcorg[i].vcorg << 4));
			FUNC4(1);

			adcout = FUNC1(state, PLLLOCK) & 0x0f;

			FUNC3("VCO: %dkHz: %d -> ADCOUT: %d %02x\n", freq_khz, itd1000_vcorg[i].vcorg, adcout, vco_chp1_i2c);

			if (adcout > 13) {
				if (!(itd1000_vcorg[i].vcorg == 7 || itd1000_vcorg[i].vcorg == 15))
					FUNC2(state, VCO_CHP1_I2C, vco_chp1_i2c | ((itd1000_vcorg[i].vcorg + 1) << 4));
			} else if (adcout < 2) {
				if (!(itd1000_vcorg[i].vcorg == 1 || itd1000_vcorg[i].vcorg == 9))
					FUNC2(state, VCO_CHP1_I2C, vco_chp1_i2c | ((itd1000_vcorg[i].vcorg - 1) << 4));
			}
			break;
		}
	}
}