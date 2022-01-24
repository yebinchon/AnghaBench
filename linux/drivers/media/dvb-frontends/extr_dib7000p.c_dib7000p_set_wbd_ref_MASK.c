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
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int wbd_ref; } ;

/* Variables and functions */
 int FUNC0 (struct dib7000p_state*,int) ; 
 int FUNC1 (struct dib7000p_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *demod, u16 value)
{
	struct dib7000p_state *state = demod->demodulator_priv;
	if (value > 4095)
		value = 4095;
	state->wbd_ref = value;
	return FUNC1(state, 105, (FUNC0(state, 105) & 0xf000) | value);
}