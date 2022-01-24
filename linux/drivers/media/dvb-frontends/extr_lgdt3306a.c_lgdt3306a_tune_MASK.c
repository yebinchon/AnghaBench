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
struct lgdt3306a_state {int current_frequency; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct dvb_frontend*,int*) ; 
 int FUNC2 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, bool re_tune,
			  unsigned int mode_flags, unsigned int *delay,
			  enum fe_status *status)
{
	int ret = 0;
	struct lgdt3306a_state *state = fe->demodulator_priv;

	FUNC0("re_tune=%u\n", re_tune);

	if (re_tune) {
		state->current_frequency = -1; /* force re-tune */
		ret = FUNC2(fe);
		if (ret != 0)
			return ret;
	}
	*delay = 125;
	ret = FUNC1(fe, status);

	return ret;
}