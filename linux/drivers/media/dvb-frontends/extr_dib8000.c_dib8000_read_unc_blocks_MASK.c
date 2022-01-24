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
typedef  int /*<<< orphan*/  u32 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib8000_state*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, u32 * unc)
{
	struct dib8000_state *state = fe->demodulator_priv;

	/* packet error on 13 seg */
	if (state->revision == 0x8090)
		*unc = FUNC0(state, 567);
	else
		*unc = FUNC0(state, 565);
	return 0;
}