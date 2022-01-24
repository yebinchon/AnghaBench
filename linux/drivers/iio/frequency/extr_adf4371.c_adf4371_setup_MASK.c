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
struct adf4371_state {int fpfd; int ref_div_factor; int clkin_freq; unsigned int* buf; int /*<<< orphan*/  regmap; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ADF4371_ADDR_ASC_MSK ; 
 int FUNC1 (int) ; 
 int ADF4371_ADDR_ASC_R_MSK ; 
 int ADF4371_MAX_FREQ_PFD ; 
 int FUNC2 (int) ; 
 int ADF4371_MUTE_LD_MSK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ADF4371_RESET_CMD ; 
 int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int,unsigned int) ; 
 unsigned int FUNC8 (int,unsigned int) ; 
 int /*<<< orphan*/  adf4371_reg_defaults ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct adf4371_state *st)
{
	unsigned int synth_timeout = 2, timeout = 1, vco_alc_timeout = 1;
	unsigned int vco_band_div, tmp;
	int ret;

	/* Perform a software reset */
	ret = FUNC13(st->regmap, FUNC3(0x0), ADF4371_RESET_CMD);
	if (ret < 0)
		return ret;

	ret = FUNC11(st->regmap, adf4371_reg_defaults,
				     FUNC6(adf4371_reg_defaults));
	if (ret < 0)
		return ret;

	/* Mute to Lock Detect */
	if (FUNC9(&st->spi->dev, "adi,mute-till-lock-en")) {
		ret = FUNC12(st->regmap, FUNC3(0x25),
					 ADF4371_MUTE_LD_MSK,
					 FUNC2(1));
		if (ret < 0)
			return ret;
	}

	/* Set address in ascending order, so the bulk_write() will work */
	ret = FUNC12(st->regmap, FUNC3(0x0),
				 ADF4371_ADDR_ASC_MSK | ADF4371_ADDR_ASC_R_MSK,
				 FUNC0(1) | FUNC1(1));
	if (ret < 0)
		return ret;
	/*
	 * Calculate and maximize PFD frequency
	 * fPFD = REFIN × ((1 + D)/(R × (1 + T)))
	 * Where D is the REFIN doubler bit, T is the reference divide by 2,
	 * R is the reference division factor
	 * TODO: it is assumed D and T equal 0.
	 */
	do {
		st->ref_div_factor++;
		st->fpfd = st->clkin_freq / st->ref_div_factor;
	} while (st->fpfd > ADF4371_MAX_FREQ_PFD);

	/* Calculate Timeouts */
	vco_band_div = FUNC8(st->fpfd, 2400000U);

	tmp = FUNC7(st->fpfd, 1000000U);
	do {
		timeout++;
		if (timeout > 1023) {
			timeout = 2;
			synth_timeout++;
		}
	} while (synth_timeout * 1024 + timeout <= 20 * tmp);

	do {
		vco_alc_timeout++;
	} while (vco_alc_timeout * 1024 - timeout <= 50 * tmp);

	st->buf[0] = vco_band_div;
	st->buf[1] = timeout & 0xFF;
	st->buf[2] = FUNC4(timeout >> 8) | 0x04;
	st->buf[3] = synth_timeout;
	st->buf[4] = FUNC5(vco_alc_timeout);

	return FUNC10(st->regmap, FUNC3(0x30), st->buf, 5);
}