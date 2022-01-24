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
struct dib8000_state {int diversity_onoff; int revision; int /*<<< orphan*/  differential_constellation; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe, int onoff)
{
	struct dib8000_state *state = fe->demodulator_priv;
	u16 tmp, sync_wait = FUNC0(state, 273) & 0xfff0;

	FUNC2("set diversity input to %i\n", onoff);
	if (!state->differential_constellation) {
		FUNC1(state, 272, 1 << 9);	//dvsy_off_lmod4 = 1
		FUNC1(state, 273, sync_wait | (1 << 2) | 2);	// sync_enable = 1; comb_mode = 2
	} else {
		FUNC1(state, 272, 0);	//dvsy_off_lmod4 = 0
		FUNC1(state, 273, sync_wait);	// sync_enable = 0; comb_mode = 0
	}
	state->diversity_onoff = onoff;

	switch (onoff) {
	case 0:		/* only use the internal way - not the diversity input */
		FUNC1(state, 270, 1);
		FUNC1(state, 271, 0);
		break;
	case 1:		/* both ways */
		FUNC1(state, 270, 6);
		FUNC1(state, 271, 6);
		break;
	case 2:		/* only the diversity input */
		FUNC1(state, 270, 0);
		FUNC1(state, 271, 1);
		break;
	}

	if (state->revision == 0x8002) {
		tmp = FUNC0(state, 903);
		FUNC1(state, 903, tmp & ~(1 << 3));
		FUNC3(30);
		FUNC1(state, 903, tmp | (1 << 3));
	}
	return 0;
}