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
typedef  int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int tuner_enable; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, int onoff)
{
	struct dib8000_state *state = fe->demodulator_priv;
	u16 en_cur_state;

	FUNC2("sleep dib8096p: %d\n", onoff);

	en_cur_state = FUNC0(state, 1922);

	/* LNAs and MIX are ON and therefore it is a valid configuration */
	if (en_cur_state > 0xff)
		state->tuner_enable = en_cur_state ;

	if (onoff)
		en_cur_state &= 0x00ff;
	else {
		if (state->tuner_enable != 0)
			en_cur_state = state->tuner_enable;
	}

	FUNC1(state, 1922, en_cur_state);

	return 0;
}