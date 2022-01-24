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
struct stv {int tsgeneral; int tscfgh; int tsspeed; int i2crpt; scalar_t__ single; scalar_t__ started; int /*<<< orphan*/  receive_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  RCVMODE_NONE ; 
 int /*<<< orphan*/  RSTV0910_CFGEXT ; 
 int /*<<< orphan*/  RSTV0910_GENCFG ; 
 int /*<<< orphan*/  RSTV0910_I2CCFG ; 
 int /*<<< orphan*/  RSTV0910_MID ; 
 int /*<<< orphan*/  RSTV0910_OUTCFG ; 
 int /*<<< orphan*/  RSTV0910_P1_CAR3CFG ; 
 int /*<<< orphan*/  RSTV0910_P1_DMDCFG4 ; 
 int /*<<< orphan*/  RSTV0910_P1_I2CRPT ; 
 int /*<<< orphan*/  RSTV0910_P1_TMGCFG2 ; 
 int /*<<< orphan*/  RSTV0910_P1_TNRCFG2 ; 
 int /*<<< orphan*/  RSTV0910_P1_TSCFGH ; 
 int /*<<< orphan*/  RSTV0910_P1_TSCFGL ; 
 int /*<<< orphan*/  RSTV0910_P1_TSCFGM ; 
 int /*<<< orphan*/  RSTV0910_P1_TSINSDELL ; 
 int /*<<< orphan*/  RSTV0910_P1_TSINSDELM ; 
 int /*<<< orphan*/  RSTV0910_P1_TSPIDFLT1 ; 
 int /*<<< orphan*/  RSTV0910_P1_TSSPEED ; 
 int /*<<< orphan*/  RSTV0910_P2_CAR3CFG ; 
 int /*<<< orphan*/  RSTV0910_P2_DMDCFG4 ; 
 int /*<<< orphan*/  RSTV0910_P2_I2CRPT ; 
 int /*<<< orphan*/  RSTV0910_P2_TMGCFG2 ; 
 int /*<<< orphan*/  RSTV0910_P2_TNRCFG2 ; 
 int /*<<< orphan*/  RSTV0910_P2_TSCFGH ; 
 int /*<<< orphan*/  RSTV0910_P2_TSCFGL ; 
 int /*<<< orphan*/  RSTV0910_P2_TSCFGM ; 
 int /*<<< orphan*/  RSTV0910_P2_TSINSDELL ; 
 int /*<<< orphan*/  RSTV0910_P2_TSINSDELM ; 
 int /*<<< orphan*/  RSTV0910_P2_TSPIDFLT1 ; 
 int /*<<< orphan*/  RSTV0910_P2_TSSPEED ; 
 int /*<<< orphan*/  RSTV0910_PADCFG ; 
 int /*<<< orphan*/  RSTV0910_SYNTCTRL ; 
 int /*<<< orphan*/  RSTV0910_TSGENERAL ; 
 int /*<<< orphan*/  RSTV0910_TSTRES0 ; 
 int /*<<< orphan*/  FUNC0 (struct stv*) ; 
 scalar_t__ FUNC1 (struct stv*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct stv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct stv *state)
{
	u8 id;

	state->receive_mode = RCVMODE_NONE;
	state->started = 0;

	if (FUNC1(state, RSTV0910_MID, &id) < 0)
		return -ENODEV;

	if (id != 0x51)
		return -EINVAL;

	/* Configure the I2C repeater to off */
	FUNC3(state, RSTV0910_P1_I2CRPT, 0x24);
	/* Configure the I2C repeater to off */
	FUNC3(state, RSTV0910_P2_I2CRPT, 0x24);
	/* Set the I2C to oversampling ratio */
	FUNC3(state, RSTV0910_I2CCFG, 0x88); /* state->i2ccfg */

	FUNC3(state, RSTV0910_OUTCFG,    0x00); /* OUTCFG */
	FUNC3(state, RSTV0910_PADCFG,    0x05); /* RFAGC Pads Dev = 05 */
	FUNC3(state, RSTV0910_SYNTCTRL,  0x02); /* SYNTCTRL */
	FUNC3(state, RSTV0910_TSGENERAL, state->tsgeneral); /* TSGENERAL */
	FUNC3(state, RSTV0910_CFGEXT,    0x02); /* CFGEXT */

	if (state->single)
		FUNC3(state, RSTV0910_GENCFG, 0x14); /* GENCFG */
	else
		FUNC3(state, RSTV0910_GENCFG, 0x15); /* GENCFG */

	FUNC3(state, RSTV0910_P1_TNRCFG2, 0x02); /* IQSWAP = 0 */
	FUNC3(state, RSTV0910_P2_TNRCFG2, 0x82); /* IQSWAP = 1 */

	FUNC3(state, RSTV0910_P1_CAR3CFG, 0x02);
	FUNC3(state, RSTV0910_P2_CAR3CFG, 0x02);
	FUNC3(state, RSTV0910_P1_DMDCFG4, 0x04);
	FUNC3(state, RSTV0910_P2_DMDCFG4, 0x04);

	FUNC3(state, RSTV0910_TSTRES0, 0x80); /* LDPC Reset */
	FUNC3(state, RSTV0910_TSTRES0, 0x00);

	FUNC3(state, RSTV0910_P1_TSPIDFLT1, 0x00);
	FUNC3(state, RSTV0910_P2_TSPIDFLT1, 0x00);

	FUNC3(state, RSTV0910_P1_TMGCFG2, 0x80);
	FUNC3(state, RSTV0910_P2_TMGCFG2, 0x80);

	FUNC2(state, 135000000);

	/* TS output */
	FUNC3(state, RSTV0910_P1_TSCFGH, state->tscfgh | 0x01);
	FUNC3(state, RSTV0910_P1_TSCFGH, state->tscfgh);
	FUNC3(state, RSTV0910_P1_TSCFGM, 0xC0); /* Manual speed */
	FUNC3(state, RSTV0910_P1_TSCFGL, 0x20);

	FUNC3(state, RSTV0910_P1_TSSPEED, state->tsspeed);

	FUNC3(state, RSTV0910_P2_TSCFGH, state->tscfgh | 0x01);
	FUNC3(state, RSTV0910_P2_TSCFGH, state->tscfgh);
	FUNC3(state, RSTV0910_P2_TSCFGM, 0xC0); /* Manual speed */
	FUNC3(state, RSTV0910_P2_TSCFGL, 0x20);

	FUNC3(state, RSTV0910_P2_TSSPEED, state->tsspeed);

	/* Reset stream merger */
	FUNC3(state, RSTV0910_P1_TSCFGH, state->tscfgh | 0x01);
	FUNC3(state, RSTV0910_P2_TSCFGH, state->tscfgh | 0x01);
	FUNC3(state, RSTV0910_P1_TSCFGH, state->tscfgh);
	FUNC3(state, RSTV0910_P2_TSCFGH, state->tscfgh);

	FUNC3(state, RSTV0910_P1_I2CRPT, state->i2crpt);
	FUNC3(state, RSTV0910_P2_I2CRPT, state->i2crpt);

	FUNC3(state, RSTV0910_P1_TSINSDELM, 0x17);
	FUNC3(state, RSTV0910_P1_TSINSDELL, 0xff);

	FUNC3(state, RSTV0910_P2_TSINSDELM, 0x17);
	FUNC3(state, RSTV0910_P2_TSINSDELL, 0xff);

	FUNC0(state);
	return 0;
}