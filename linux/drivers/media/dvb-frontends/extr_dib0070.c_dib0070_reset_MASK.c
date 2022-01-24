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
typedef  int u16 ;
struct dvb_frontend {struct dib0070_state* tuner_priv; } ;
struct dib0070_state {int revision; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ force_crystal_mode; int clock_khz; int osc_buffer_state; int clock_pad_drive; int charge_pump; int /*<<< orphan*/  enable_third_order_filter; scalar_t__ invert_iq; } ;

/* Variables and functions */
 int DIB0070S_P1A ; 
 int DIB0070_P1D ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dib0070_state*) ; 
 scalar_t__ dib0070_p1f_defaults ; 
 int FUNC1 (struct dib0070_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib0070_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib0070_state*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe)
{
	struct dib0070_state *state = fe->tuner_priv;
	u16 l, r, *n;

	FUNC0(state);


#ifndef FORCE_SBAND_TUNER
	if ((FUNC1(state, 0x22) >> 9) & 0x1)
		state->revision = (FUNC1(state, 0x1f) >> 8) & 0xff;
	else
#else
#warning forcing SBAND
#endif
	state->revision = DIB0070S_P1A;

	/* P1F or not */
	FUNC5("Revision: %x\n", state->revision);

	if (state->revision == DIB0070_P1D) {
		FUNC5("Error: this driver is not to be used meant for P1D or earlier\n");
		return -EINVAL;
	}

	n = (u16 *) dib0070_p1f_defaults;
	l = FUNC6(n++);
	while (l) {
		r = FUNC6(n++);
		do {
			FUNC4(state, (u8)r, FUNC6(n++));
			r++;
		} while (--l);
		l = FUNC6(n++);
	}

	if (state->cfg->force_crystal_mode != 0)
		r = state->cfg->force_crystal_mode;
	else if (state->cfg->clock_khz >= 24000)
		r = 1;
	else
		r = 2;


	r |= state->cfg->osc_buffer_state << 3;

	FUNC4(state, 0x10, r);
	FUNC4(state, 0x1f, (1 << 8) | ((state->cfg->clock_pad_drive & 0xf) << 5));

	if (state->cfg->invert_iq) {
		r = FUNC1(state, 0x02) & 0xffdf;
		FUNC4(state, 0x02, r | (1 << 5));
	}

	if (state->revision == DIB0070S_P1A)
		FUNC2(fe, 2, 4, 3, 0);
	else
		FUNC2(fe, 5, 4, state->cfg->charge_pump,
				     state->cfg->enable_third_order_filter);

	FUNC4(state, 0x01, (54 << 9) | 0xc8);

	FUNC3(state);

	return 0;
}