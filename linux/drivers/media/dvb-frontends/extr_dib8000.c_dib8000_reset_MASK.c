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
typedef  int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct TYPE_4__ {int drives; int div_cfg; TYPE_1__* pll; } ;
struct dib8000_state {int revision; TYPE_2__ cfg; scalar_t__ isdbt_cfg_loaded; int /*<<< orphan*/ * current_agc; int /*<<< orphan*/  i2c_master; int /*<<< orphan*/  i2c; } ;
struct TYPE_3__ {scalar_t__ ifreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB8000_POWER_ALL ; 
 int /*<<< orphan*/  DIB8000_POWER_INTERFACE_ONLY ; 
 int /*<<< orphan*/  DIBX000_ADC_OFF ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_OFF ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_ON ; 
 int EINVAL ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int* dib8000_defaults ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dib8000_state*,int) ; 
 scalar_t__ FUNC2 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC5 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,int) ; 
 scalar_t__ FUNC8 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dib8000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct dvb_frontend *fe)
{
	struct dib8000_state *state = fe->demodulator_priv;

	if ((state->revision = FUNC0(&state->i2c)) == 0)
		return -EINVAL;

	/* sram lead in, rdy */
	if (state->revision != 0x8090)
		FUNC10(state, 1287, 0x0003);

	if (state->revision == 0x8000)
		FUNC12("error : dib8000 MA not supported\n");

	FUNC11(&state->i2c_master);

	FUNC9(state, DIB8000_POWER_ALL);

	/* always leave the VBG voltage on - it consumes almost nothing but takes a long time to start */
	FUNC6(state, DIBX000_ADC_OFF);

	/* restart all parts */
	FUNC10(state, 770, 0xffff);
	FUNC10(state, 771, 0xffff);
	FUNC10(state, 772, 0xfffc);
	FUNC10(state, 898, 0x000c);	/* restart sad */
	if (state->revision == 0x8090)
		FUNC10(state, 1280, 0x0045);
	else
		FUNC10(state, 1280, 0x004d);
	FUNC10(state, 1281, 0x000c);

	FUNC10(state, 770, 0x0000);
	FUNC10(state, 771, 0x0000);
	FUNC10(state, 772, 0x0000);
	FUNC10(state, 898, 0x0004);	// sad
	FUNC10(state, 1280, 0x0000);
	FUNC10(state, 1281, 0x0000);

	/* drives */
	if (state->revision != 0x8090) {
		if (state->cfg.drives)
			FUNC10(state, 906, state->cfg.drives);
		else {
			FUNC12("using standard PAD-drive-settings, please adjust settings in config-struct to be optimal.\n");
			/* min drive SDRAM - not optimal - adjust */
			FUNC10(state, 906, 0x2d98);
		}
	}

	FUNC3(state);
	if (state->revision != 0x8090)
		FUNC10(state, 898, 0x0004);

	if (FUNC2(state) != 0)
		FUNC12("GPIO reset was not successful.\n");

	if ((state->revision != 0x8090) &&
			(FUNC8(fe, OUTMODE_HIGH_Z) != 0))
		FUNC12("OUTPUT_MODE could not be reset.\n");

	state->current_agc = NULL;

	// P_iqc_alpha_pha, P_iqc_alpha_amp, P_iqc_dcc_alpha, ...
	/* P_iqc_ca2 = 0; P_iqc_impnc_on = 0; P_iqc_mode = 0; */
	if (state->cfg.pll->ifreq == 0)
		FUNC10(state, 40, 0x0755);	/* P_iqc_corr_inh = 0 enable IQcorr block */
	else
		FUNC10(state, 40, 0x1f55);	/* P_iqc_corr_inh = 1 disable IQcorr block */

	{
		u16 l = 0, r;
		const u16 *n;
		n = dib8000_defaults;
		l = *n++;
		while (l) {
			r = *n++;
			do {
				FUNC10(state, r, *n++);
				r++;
			} while (--l);
			l = *n++;
		}
	}

	state->isdbt_cfg_loaded = 0;

	//div_cfg override for special configs
	if ((state->revision != 8090) && (state->cfg.div_cfg != 0))
		FUNC10(state, 903, state->cfg.div_cfg);

	/* unforce divstr regardless whether i2c enumeration was done or not */
	FUNC10(state, 1285, FUNC1(state, 1285) & ~(1 << 1));

	FUNC7(fe, 6000);

	FUNC6(state, DIBX000_SLOW_ADC_ON);
	FUNC5(state);
	if (state->revision != 0x8090)
		FUNC6(state, DIBX000_SLOW_ADC_OFF);

	/* ber_rs_len = 3 */
	FUNC10(state, 285, (FUNC1(state, 285) & ~0x60) | (3 << 5));

	FUNC9(state, DIB8000_POWER_INTERFACE_ONLY);

	FUNC4(fe);

	return 0;
}