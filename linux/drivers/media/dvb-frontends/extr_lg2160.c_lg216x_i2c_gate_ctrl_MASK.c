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
struct lg216x_state {TYPE_1__* cfg; } ;
struct dvb_frontend {struct lg216x_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ deny_i2c_rptr; } ;

/* Variables and functions */
 int FUNC0 (struct lg216x_state*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, int enable)
{
	struct lg216x_state *state = fe->demodulator_priv;
	int ret;

	if (state->cfg->deny_i2c_rptr)
		return 0;

	FUNC1("(%d)\n", enable);

	ret = FUNC0(state, 0x0000, 0, enable ? 0 : 1);

	FUNC2(1);

	return ret;
}