#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {TYPE_1__* config; } ;
struct TYPE_5__ {int reg; int data; } ;
struct TYPE_4__ {scalar_t__ dont_use_pll; scalar_t__ lnb_polarity; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct cx24123_state*,int) ; 
 TYPE_2__* cx24123_regdata ; 
 int /*<<< orphan*/  FUNC2 (struct cx24123_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx24123_state*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	struct cx24123_state *state = fe->demodulator_priv;
	int i;

	FUNC4("init frontend\n");

	/* Configure the demod to a good set of defaults */
	for (i = 0; i < FUNC0(cx24123_regdata); i++)
		FUNC3(state, cx24123_regdata[i].reg,
			cx24123_regdata[i].data);

	/* Set the LNB polarity */
	if (state->config->lnb_polarity)
		FUNC3(state, 0x32,
			FUNC1(state, 0x32) | 0x02);

	if (state->config->dont_use_pll)
		FUNC2(state, 1, 0);

	return 0;
}