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
struct TYPE_2__ {scalar_t__ tuner_is_baseband; } ;
struct dib7000p_state {scalar_t__ version; TYPE_1__ cfg; int /*<<< orphan*/  i2c_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000P_POWER_ALL ; 
 int /*<<< orphan*/  DIB7000P_POWER_INTERFACE_ONLY ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_OFF ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_ON ; 
 int /*<<< orphan*/  DIBX000_VBG_ENABLE ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 scalar_t__ SOC7090 ; 
 int /*<<< orphan*/  dib7000p_defaults ; 
 int FUNC0 (struct dib7000p_state*,int) ; 
 scalar_t__ FUNC1 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib7000p_state*,int) ; 
 scalar_t__ FUNC6 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct dib7000p_state *state)
{
	FUNC7(state, DIB7000P_POWER_ALL);

	if (state->version == SOC7090)
		FUNC10(&state->i2c_master);

	FUNC4(state, DIBX000_VBG_ENABLE);

	/* restart all parts */
	FUNC9(state, 770, 0xffff);
	FUNC9(state, 771, 0xffff);
	FUNC9(state, 772, 0x001f);
	FUNC9(state, 1280, 0x001f - ((1 << 4) | (1 << 3)));

	FUNC9(state, 770, 0);
	FUNC9(state, 771, 0);
	FUNC9(state, 772, 0);
	FUNC9(state, 1280, 0);

	if (state->version != SOC7090) {
		FUNC9(state,  898, 0x0003);
		FUNC9(state,  898, 0);
	}

	/* default */
	FUNC2(state);

	if (FUNC1(state) != 0)
		FUNC11("GPIO reset was not successful.\n");

	if (state->version == SOC7090) {
		FUNC9(state, 899, 0);

		/* impulse noise */
		FUNC9(state, 42, (1<<5) | 3); /* P_iqc_thsat_ipc = 1 ; P_iqc_win2 = 3 */
		FUNC9(state, 43, 0x2d4); /*-300 fag P_iqc_dect_min = -280 */
		FUNC9(state, 44, 300); /* 300 fag P_iqc_dect_min = +280 */
		FUNC9(state, 273, (0<<6) | 30);
	}
	if (FUNC6(state, OUTMODE_HIGH_Z) != 0)
		FUNC11("OUTPUT_MODE could not be reset.\n");

	FUNC4(state, DIBX000_SLOW_ADC_ON);
	FUNC3(state);
	FUNC4(state, DIBX000_SLOW_ADC_OFF);

	/* unforce divstr regardless whether i2c enumeration was done or not */
	FUNC9(state, 1285, FUNC0(state, 1285) & ~(1 << 1));

	FUNC5(state, 8000);

	if (state->version == SOC7090) {
		FUNC9(state, 36, 0x0755);/* P_iqc_impnc_on =1 & P_iqc_corr_inh = 1 for impulsive noise */
	} else {
		if (state->cfg.tuner_is_baseband)
			FUNC9(state, 36, 0x0755);
		else
			FUNC9(state, 36, 0x1f55);
	}

	FUNC8(state, dib7000p_defaults);
	if (state->version != SOC7090) {
		FUNC9(state, 901, 0x0006);
		FUNC9(state, 902, (3 << 10) | (1 << 6));
		FUNC9(state, 905, 0x2c8e);
	}

	FUNC7(state, DIB7000P_POWER_INTERFACE_ONLY);

	return 0;
}