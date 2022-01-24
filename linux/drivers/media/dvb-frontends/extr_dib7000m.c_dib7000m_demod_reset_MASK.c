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
struct TYPE_4__ {TYPE_1__* bw; scalar_t__ tuner_is_baseband; scalar_t__ mobile_mode; scalar_t__ dvbt_mode; } ;
struct dib7000m_state {int revision; int reg_offs; TYPE_2__ cfg; int /*<<< orphan*/  internal_clk; } ;
struct TYPE_3__ {int /*<<< orphan*/  internal; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000M_POWER_ALL ; 
 int /*<<< orphan*/  DIB7000M_POWER_INTERFACE_ONLY ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_OFF ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_ON ; 
 int /*<<< orphan*/  DIBX000_VBG_ENABLE ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int /*<<< orphan*/  dib7000m_defaults ; 
 int /*<<< orphan*/  dib7000m_defaults_common ; 
 int FUNC0 (struct dib7000m_state*,int) ; 
 scalar_t__ FUNC1 (struct dib7000m_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000m_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000m_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib7000m_state*,int) ; 
 scalar_t__ FUNC6 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dib7000m_state*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dib7000m_state*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct dib7000m_state *state)
{
	FUNC7(state, DIB7000M_POWER_ALL);

	/* always leave the VBG voltage on - it consumes almost nothing but takes a long time to start */
	FUNC4(state, DIBX000_VBG_ENABLE);

	/* restart all parts */
	FUNC9(state,  898, 0xffff);
	FUNC9(state,  899, 0xffff);
	FUNC9(state,  900, 0xff0f);
	FUNC9(state,  901, 0xfffc);

	FUNC9(state,  898, 0);
	FUNC9(state,  899, 0);
	FUNC9(state,  900, 0);
	FUNC9(state,  901, 0);

	if (state->revision == 0x4000)
		FUNC2(state);
	else
		FUNC10(state);

	if (FUNC1(state) != 0)
		FUNC11("GPIO reset was not successful.\n");

	if (FUNC6(state, OUTMODE_HIGH_Z) != 0)
		FUNC11("OUTPUT_MODE could not be reset.\n");

	/* unforce divstr regardless whether i2c enumeration was done or not */
	FUNC9(state, 1794, FUNC0(state, 1794) & ~(1 << 1) );

	FUNC5(state, 8000);

	FUNC4(state, DIBX000_SLOW_ADC_ON);
	FUNC3(state);
	FUNC4(state, DIBX000_SLOW_ADC_OFF);

	if (state->cfg.dvbt_mode)
		FUNC9(state, 1796, 0x0); // select DVB-T output

	if (state->cfg.mobile_mode)
		FUNC9(state, 261 + state->reg_offs, 2);
	else
		FUNC9(state, 224 + state->reg_offs, 1);

	// P_iqc_alpha_pha, P_iqc_alpha_amp, P_iqc_dcc_alpha, ...
	if(state->cfg.tuner_is_baseband)
		FUNC9(state, 36, 0x0755);
	else
		FUNC9(state, 36, 0x1f55);

	// P_divclksel=3 P_divbitsel=1
	if (state->revision == 0x4000)
		FUNC9(state, 909, (3 << 10) | (1 << 6));
	else
		FUNC9(state, 909, (3 << 4) | 1);

	FUNC8(state, dib7000m_defaults_common);
	FUNC8(state, dib7000m_defaults);

	FUNC7(state, DIB7000M_POWER_INTERFACE_ONLY);

	state->internal_clk = state->cfg.bw->internal;

	return 0;
}