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
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int revision; } ;

/* Variables and functions */
 int FUNC0 (struct dib7000m_state*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *demod)
{
	struct dib7000m_state *state = demod->demodulator_priv;
	if (state->revision == 0x4000)
		return FUNC0(state, 1793);
	else
		return FUNC0(state, 537);
}