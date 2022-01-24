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
struct s5h1420_state {scalar_t__ tunedfreq; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;
struct dtv_frontend_properties {int /*<<< orphan*/  fec_inner; int /*<<< orphan*/  symbol_rate; int /*<<< orphan*/  inversion; scalar_t__ frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s5h1420_state*) ; 
 scalar_t__ FUNC1 (struct s5h1420_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5h1420_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5h1420_state*) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend* fe,
				struct dtv_frontend_properties *p)
{
	struct s5h1420_state* state = fe->demodulator_priv;

	p->frequency = state->tunedfreq + FUNC1(state);
	p->inversion = FUNC2(state);
	p->symbol_rate = FUNC3(state);
	p->fec_inner = FUNC0(state);

	return 0;
}