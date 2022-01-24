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
struct stv0299_state {TYPE_1__* config; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; int /*<<< orphan*/  symbol_rate; int /*<<< orphan*/  fec_inner; int /*<<< orphan*/  inversion; } ;
typedef  int s32 ;
typedef  scalar_t__ s16 ;
struct TYPE_2__ {int mclk; scalar_t__ invert; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVERSION_OFF ; 
 int /*<<< orphan*/  INVERSION_ON ; 
 int /*<<< orphan*/  FUNC0 (struct stv0299_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct stv0299_state*) ; 
 int FUNC2 (struct stv0299_state*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
				struct dtv_frontend_properties *p)
{
	struct stv0299_state* state = fe->demodulator_priv;
	s32 derot_freq;
	int invval;

	derot_freq = (s32)(s16) ((FUNC2 (state, 0x22) << 8)
				| FUNC2 (state, 0x23));

	derot_freq *= (state->config->mclk >> 16);
	derot_freq += 500;
	derot_freq /= 1000;

	p->frequency += derot_freq;

	invval = FUNC2 (state, 0x0c) & 1;
	if (state->config->invert) invval = (~invval) & 1;
	p->inversion = invval ? INVERSION_ON : INVERSION_OFF;

	p->fec_inner = FUNC0(state);
	p->symbol_rate = FUNC1(state);

	return 0;
}