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
struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_frontend*,int*) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, bool re_tune,
			unsigned int mode_flags, unsigned int *delay,
			enum fe_status *status)
{
	struct cx24120_state *state = fe->demodulator_priv;
	int ret;

	FUNC2(&state->i2c->dev, "(%d)\n", re_tune);

	/* TODO: Do we need to set delay? */

	if (re_tune) {
		ret = FUNC1(fe);
		if (ret)
			return ret;
	}

	return FUNC0(fe, status);
}