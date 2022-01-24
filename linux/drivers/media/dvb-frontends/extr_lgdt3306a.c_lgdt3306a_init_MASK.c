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
typedef  int u8 ;
struct lgdt3306a_state {TYPE_1__* cfg; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;
struct TYPE_2__ {int xtalMHz; int /*<<< orphan*/  mpeg_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lgdt3306a_state*,int) ; 
 int FUNC4 (struct lgdt3306a_state*,int,int*) ; 
 int FUNC5 (struct lgdt3306a_state*,int) ; 
 int FUNC6 (struct lgdt3306a_state*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct lgdt3306a_state*,int,int,int) ; 
 int FUNC8 (struct lgdt3306a_state*) ; 
 int FUNC9 (struct lgdt3306a_state*) ; 
 int FUNC10 (struct lgdt3306a_state*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

__attribute__((used)) static int FUNC12(struct dvb_frontend *fe)
{
	struct lgdt3306a_state *state = fe->demodulator_priv;
	u8 val;
	int ret;

	FUNC0("\n");

	/* 1. Normal operation mode */
	ret = FUNC7(state, 0x0001, 0, 1); /* SIMFASTENB=0x01 */
	if (FUNC1(ret))
		goto fail;

	/* 2. Spectrum inversion auto detection (Not valid for VSB) */
	ret = FUNC6(state, 0);
	if (FUNC1(ret))
		goto fail;

	/* 3. Spectrum inversion(According to the tuner configuration) */
	ret = FUNC5(state, 1);
	if (FUNC1(ret))
		goto fail;

	/* 4. Peak-to-peak voltage of ADC input signal */

	/* ADCSEL1V=0x80=1Vpp; 0x00=2Vpp */
	ret = FUNC7(state, 0x0004, 7, 1);
	if (FUNC1(ret))
		goto fail;

	/* 5. ADC output data capture clock phase */

	/* 0=same phase as ADC clock */
	ret = FUNC7(state, 0x0004, 2, 0);
	if (FUNC1(ret))
		goto fail;

	/* 5a. ADC sampling clock source */

	/* ADCCLKPLLSEL=0x08; 0=use ext clock, not PLL */
	ret = FUNC7(state, 0x0004, 3, 0);
	if (FUNC1(ret))
		goto fail;

	/* 6. Automatic PLL set */

	/* PLLSETAUTO=0x40; 0=off */
	ret = FUNC7(state, 0x0005, 6, 0);
	if (FUNC1(ret))
		goto fail;

	if (state->cfg->xtalMHz == 24) {	/* 24MHz */
		/* 7. Frequency for PLL output(0x2564 for 192MHz for 24MHz) */
		ret = FUNC4(state, 0x0005, &val);
		if (FUNC1(ret))
			goto fail;
		val &= 0xc0;
		val |= 0x25;
		ret = FUNC10(state, 0x0005, val);
		if (FUNC1(ret))
			goto fail;
		ret = FUNC10(state, 0x0006, 0x64);
		if (FUNC1(ret))
			goto fail;

		/* 8. ADC sampling frequency(0x180000 for 24MHz sampling) */
		ret = FUNC4(state, 0x000d, &val);
		if (FUNC1(ret))
			goto fail;
		val &= 0xc0;
		val |= 0x18;
		ret = FUNC10(state, 0x000d, val);
		if (FUNC1(ret))
			goto fail;

	} else if (state->cfg->xtalMHz == 25) { /* 25MHz */
		/* 7. Frequency for PLL output */
		ret = FUNC4(state, 0x0005, &val);
		if (FUNC1(ret))
			goto fail;
		val &= 0xc0;
		val |= 0x25;
		ret = FUNC10(state, 0x0005, val);
		if (FUNC1(ret))
			goto fail;
		ret = FUNC10(state, 0x0006, 0x64);
		if (FUNC1(ret))
			goto fail;

		/* 8. ADC sampling frequency(0x190000 for 25MHz sampling) */
		ret = FUNC4(state, 0x000d, &val);
		if (FUNC1(ret))
			goto fail;
		val &= 0xc0;
		val |= 0x19;
		ret = FUNC10(state, 0x000d, val);
		if (FUNC1(ret))
			goto fail;
	} else {
		FUNC11("Bad xtalMHz=%d\n", state->cfg->xtalMHz);
	}
#if 0
	ret = lgdt3306a_write_reg(state, 0x000e, 0x00);
	ret = lgdt3306a_write_reg(state, 0x000f, 0x00);
#endif

	/* 9. Center frequency of input signal of ADC */
	ret = FUNC10(state, 0x0010, 0x34); /* 3.25MHz */
	ret = FUNC10(state, 0x0011, 0x00);

	/* 10. Fixed gain error value */
	ret = FUNC10(state, 0x0014, 0); /* gain error=0 */

	/* 10a. VSB TR BW gear shift initial step */
	ret = FUNC4(state, 0x103c, &val);
	val &= 0x0f;
	val |= 0x20; /* SAMGSAUTOSTL_V[3:0] = 2 */
	ret = FUNC10(state, 0x103c, val);

	/* 10b. Timing offset calibration in low temperature for VSB */
	ret = FUNC4(state, 0x103d, &val);
	val &= 0xfc;
	val |= 0x03;
	ret = FUNC10(state, 0x103d, val);

	/* 10c. Timing offset calibration in low temperature for QAM */
	ret = FUNC4(state, 0x1036, &val);
	val &= 0xf0;
	val |= 0x0c;
	ret = FUNC10(state, 0x1036, val);

	/* 11. Using the imaginary part of CIR in CIR loading */
	ret = FUNC4(state, 0x211f, &val);
	val &= 0xef; /* do not use imaginary of CIR */
	ret = FUNC10(state, 0x211f, val);

	/* 12. Control of no signal detector function */
	ret = FUNC4(state, 0x2849, &val);
	val &= 0xef; /* NOUSENOSIGDET=0, enable no signal detector */
	ret = FUNC10(state, 0x2849, val);

	/* FGR - put demod in some known mode */
	ret = FUNC8(state);

	/* 13. TP stream format */
	ret = FUNC2(state, state->cfg->mpeg_mode);

	/* 14. disable output buses */
	ret = FUNC3(state, 1);

	/* 15. Sleep (in reset) */
	ret = FUNC9(state);
	FUNC1(ret);

fail:
	return ret;
}