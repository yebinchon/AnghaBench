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
typedef  scalar_t__ u8 ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int div_sync_wait; scalar_t__ div_state; scalar_t__ div_force_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *demod, int onoff)
{
	struct dib7000p_state *state = demod->demodulator_priv;

	if (state->div_force_off) {
		FUNC1("diversity combination deactivated - forced by COFDM parameters\n");
		onoff = 0;
		FUNC0(state, 207, 0);
	} else
		FUNC0(state, 207, (state->div_sync_wait << 4) | (1 << 2) | (2 << 0));

	state->div_state = (u8) onoff;

	if (onoff) {
		FUNC0(state, 204, 6);
		FUNC0(state, 205, 16);
		/* P_dvsy_sync_mode = 0, P_dvsy_sync_enable=1, P_dvcb_comb_mode=2 */
	} else {
		FUNC0(state, 204, 1);
		FUNC0(state, 205, 0);
	}

	return 0;
}