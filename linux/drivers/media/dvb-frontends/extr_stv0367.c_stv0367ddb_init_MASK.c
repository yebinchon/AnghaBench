#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stv0367ter_state {int unlock_counter; scalar_t__ first_lock; scalar_t__ pBER; } ;
struct TYPE_16__ {int len; TYPE_7__* stat; } ;
struct TYPE_14__ {int len; TYPE_5__* stat; } ;
struct TYPE_12__ {int len; TYPE_3__* stat; } ;
struct dtv_frontend_properties {TYPE_8__ block_error; TYPE_6__ cnr; TYPE_4__ strength; } ;
struct TYPE_9__ {struct dtv_frontend_properties dtv_property_cache; } ;
struct stv0367_state {size_t deftabs; TYPE_2__* config; TYPE_1__ fe; struct stv0367ter_state* ter_state; } ;
struct TYPE_15__ {void* scale; } ;
struct TYPE_13__ {void* scale; } ;
struct TYPE_11__ {void* scale; } ;
struct TYPE_10__ {int /*<<< orphan*/  xtal; } ;

/* Variables and functions */
 void* FE_SCALE_NOT_AVAILABLE ; 
 int /*<<< orphan*/  R367CAB_EQU_FFE_LEAKAGE ; 
 int /*<<< orphan*/  R367CAB_FSM_SNR2_HTH ; 
 int /*<<< orphan*/  R367CAB_IQDEM_ADJ_EN ; 
 int /*<<< orphan*/  R367CAB_IQ_QAM ; 
 int /*<<< orphan*/  R367CAB_OUTFORMAT_0 ; 
 int /*<<< orphan*/  R367TER_AGC12C ; 
 int /*<<< orphan*/  R367TER_AGCCTRL1 ; 
 int /*<<< orphan*/  R367TER_ANACTRL ; 
 int /*<<< orphan*/  R367TER_ANADIGCTRL ; 
 int /*<<< orphan*/  R367TER_DUAL_AD12 ; 
 int /*<<< orphan*/  R367TER_FEPATH_CFG ; 
 int /*<<< orphan*/  R367TER_GAIN_SRC1 ; 
 int /*<<< orphan*/  R367TER_GAIN_SRC2 ; 
 int /*<<< orphan*/  R367TER_I2CRPT ; 
 int /*<<< orphan*/  R367TER_INC_DEROT1 ; 
 int /*<<< orphan*/  R367TER_INC_DEROT2 ; 
 int /*<<< orphan*/  R367TER_TOPCTRL ; 
 int /*<<< orphan*/  R367TER_TRL_CTL ; 
 int /*<<< orphan*/  R367TER_TRL_NOMRATE1 ; 
 int /*<<< orphan*/  R367TER_TRL_NOMRATE2 ; 
 int /*<<< orphan*/  R367TER_TSCFGH ; 
 int /*<<< orphan*/  R367TER_TSCFGL ; 
 int /*<<< orphan*/  R367TER_TSCFGM ; 
 int /*<<< orphan*/  R367TER_TSSPEED ; 
 int /*<<< orphan*/  STV0367_ICSPEED_58000 ; 
 size_t STV0367_TAB_BASE ; 
 size_t STV0367_TAB_CAB ; 
 size_t STV0367_TAB_TER ; 
 scalar_t__** stv0367_deftabs ; 
 int /*<<< orphan*/  FUNC0 (struct stv0367_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stv0367_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct stv0367_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct stv0367_state *state)
{
	struct stv0367ter_state *ter_state = state->ter_state;
	struct dtv_frontend_properties *p = &state->fe.dtv_property_cache;

	FUNC2(state, R367TER_TOPCTRL, 0x10);

	if (stv0367_deftabs[state->deftabs][STV0367_TAB_BASE])
		FUNC1(state,
			stv0367_deftabs[state->deftabs][STV0367_TAB_BASE]);

	FUNC1(state,
		stv0367_deftabs[state->deftabs][STV0367_TAB_CAB]);

	FUNC2(state, R367TER_TOPCTRL, 0x00);
	FUNC1(state,
		stv0367_deftabs[state->deftabs][STV0367_TAB_TER]);

	FUNC2(state, R367TER_GAIN_SRC1, 0x2A);
	FUNC2(state, R367TER_GAIN_SRC2, 0xD6);
	FUNC2(state, R367TER_INC_DEROT1, 0x55);
	FUNC2(state, R367TER_INC_DEROT2, 0x55);
	FUNC2(state, R367TER_TRL_CTL, 0x14);
	FUNC2(state, R367TER_TRL_NOMRATE1, 0xAE);
	FUNC2(state, R367TER_TRL_NOMRATE2, 0x56);
	FUNC2(state, R367TER_FEPATH_CFG, 0x0);

	/* OFDM TS Setup */

	FUNC2(state, R367TER_TSCFGH, 0x70);
	FUNC2(state, R367TER_TSCFGM, 0xC0);
	FUNC2(state, R367TER_TSCFGL, 0x20);
	FUNC2(state, R367TER_TSSPEED, 0x40); /* Fixed at 54 MHz */

	FUNC2(state, R367TER_TSCFGH, 0x71);
	FUNC2(state, R367TER_TSCFGH, 0x70);

	FUNC2(state, R367TER_TOPCTRL, 0x10);

	/* Also needed for QAM */
	FUNC2(state, R367TER_AGC12C, 0x01); /* AGC Pin setup */

	FUNC2(state, R367TER_AGCCTRL1, 0x8A);

	/* QAM TS setup, note exact format also depends on descrambler */
	/* settings */
	/* Inverted Clock, Swap, serial */
	FUNC2(state, R367CAB_OUTFORMAT_0, 0x85);

	/* Clock setup (PLL bypassed and disabled) */
	FUNC2(state, R367TER_ANACTRL, 0x0D);

	/* IC runs at 58 MHz with a 27 MHz crystal */
	FUNC0(state, STV0367_ICSPEED_58000, state->config->xtal);

	/* Tuner setup */
	/* Buffer Q disabled, I Enabled, signed ADC */
	FUNC2(state, R367TER_ANADIGCTRL, 0x8b);
	FUNC2(state, R367TER_DUAL_AD12, 0x04); /* ADCQ disabled */

	/* Improves the C/N lock limit */
	FUNC2(state, R367CAB_FSM_SNR2_HTH, 0x23);
	/* ZIF/IF Automatic mode */
	FUNC2(state, R367CAB_IQ_QAM, 0x01);
	/* Improving burst noise performances */
	FUNC2(state, R367CAB_EQU_FFE_LEAKAGE, 0x83);
	/* Improving ACI performances */
	FUNC2(state, R367CAB_IQDEM_ADJ_EN, 0x05);

	/* PLL enabled and used */
	FUNC2(state, R367TER_ANACTRL, 0x00);

	FUNC2(state, R367TER_I2CRPT, (0x08 | ((5 & 0x07) << 4)));

	ter_state->pBER = 0;
	ter_state->first_lock = 0;
	ter_state->unlock_counter = 2;

	p->strength.len = 1;
	p->strength.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	p->cnr.len = 1;
	p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	p->block_error.len = 1;
	p->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;

	return 0;
}