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
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int /*<<< orphan*/  tuner_i2c_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24123_state*) ; 

__attribute__((used)) static void FUNC3(struct dvb_frontend *fe)
{
	struct cx24123_state *state = fe->demodulator_priv;
	FUNC0("\n");
	FUNC1(&state->tuner_i2c_adapter);
	FUNC2(state);
}