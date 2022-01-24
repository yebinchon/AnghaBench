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
struct stv0367_state {int activedemod; } ;
struct dvb_frontend {struct stv0367_state* demodulator_priv; } ;
struct dtv_frontend_properties {int dummy; } ;

/* Variables and functions */
#define  demod_cab 129 
#define  demod_ter 128 
 int FUNC0 (struct dvb_frontend*,struct dtv_frontend_properties*) ; 
 int FUNC1 (struct dvb_frontend*,struct dtv_frontend_properties*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
				   struct dtv_frontend_properties *p)
{
	struct stv0367_state *state = fe->demodulator_priv;

	switch (state->activedemod) {
	case demod_ter:
		return FUNC1(fe, p);
	case demod_cab:
		return FUNC0(fe, p);
	default:
		break;
	}

	return 0;
}