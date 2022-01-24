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
typedef  int u8 ;
typedef  int u32 ;
struct adf4371_state {int integer; int fract1; int fract2; int mod2; int* buf; int ref_div_factor; int /*<<< orphan*/  regmap; int /*<<< orphan*/  rf_div_sel; int /*<<< orphan*/  fpfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
#define  ADF4371_CH_RF16 131 
#define  ADF4371_CH_RF32 130 
#define  ADF4371_CH_RF8 129 
#define  ADF4371_CH_RFAUX8 128 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 unsigned long long ADF4371_MIN_VCO_FREQ ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADF4371_RF_DIV_SEL_MSK ; 
 int FUNC7 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  OUT_RF16_FREQ ; 
 int /*<<< orphan*/  OUT_RF32_FREQ ; 
 int /*<<< orphan*/  OUT_RF8_FREQ ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int FUNC9 (int,unsigned int,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct adf4371_state *st, unsigned long long freq,
			    unsigned int channel)
{
	u32 cp_bleed;
	u8 int_mode = 0;
	int ret;

	switch (channel) {
	case ADF4371_CH_RF8:
	case ADF4371_CH_RFAUX8:
		if (FUNC0(freq, OUT_RF8_FREQ))
			return -EINVAL;

		st->rf_div_sel = 0;

		while (freq < ADF4371_MIN_VCO_FREQ) {
			freq <<= 1;
			st->rf_div_sel++;
		}
		break;
	case ADF4371_CH_RF16:
		/* ADF4371 RF16 8000...16000 MHz */
		if (FUNC0(freq, OUT_RF16_FREQ))
			return -EINVAL;

		freq >>= 1;
		break;
	case ADF4371_CH_RF32:
		/* ADF4371 RF32 16000...32000 MHz */
		if (FUNC0(freq, OUT_RF32_FREQ))
			return -EINVAL;

		freq >>= 2;
		break;
	default:
		return -EINVAL;
	}

	FUNC8(freq, st->fpfd, &st->integer, &st->fract1,
				    &st->fract2, &st->mod2);
	st->buf[0] = st->integer >> 8;
	st->buf[1] = 0x40; /* REG12 default */
	st->buf[2] = 0x00;
	st->buf[3] = st->fract1 & 0xFF;
	st->buf[4] = st->fract1 >> 8;
	st->buf[5] = st->fract1 >> 16;
	st->buf[6] = FUNC3(st->fract2 & 0x7F) |
		     FUNC1(st->fract1 >> 24);
	st->buf[7] = FUNC2(st->fract2 >> 7);
	st->buf[8] = st->mod2 & 0xFF;
	st->buf[9] = FUNC4(st->mod2 >> 8);

	ret = FUNC10(st->regmap, FUNC5(0x11), st->buf, 10);
	if (ret < 0)
		return ret;
	/*
	 * The R counter allows the input reference frequency to be
	 * divided down to produce the reference clock to the PFD
	 */
	ret = FUNC12(st->regmap, FUNC5(0x1F), st->ref_div_factor);
	if (ret < 0)
		return ret;

	ret = FUNC11(st->regmap, FUNC5(0x24),
				 ADF4371_RF_DIV_SEL_MSK,
				 FUNC6(st->rf_div_sel));
	if (ret < 0)
		return ret;

	cp_bleed = FUNC7(400 * 1750, st->integer * 375);
	cp_bleed = FUNC9(cp_bleed, 1U, 255U);
	ret = FUNC12(st->regmap, FUNC5(0x26), cp_bleed);
	if (ret < 0)
		return ret;
	/*
	 * Set to 1 when in INT mode (when FRAC1 = FRAC2 = 0),
	 * and set to 0 when in FRAC mode.
	 */
	if (st->fract1 == 0 && st->fract2 == 0)
		int_mode = 0x01;

	ret = FUNC12(st->regmap, FUNC5(0x2B), int_mode);
	if (ret < 0)
		return ret;

	return FUNC12(st->regmap, FUNC5(0x10), st->integer & 0xFF);
}