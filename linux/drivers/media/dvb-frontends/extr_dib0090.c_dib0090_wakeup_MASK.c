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
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sleep ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct dib0090_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib0090_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct dib0090_state *state = fe->tuner_priv;
	if (state->config->sleep)
		state->config->sleep(fe, 0);

	/* enable dataTX in case we have been restarted in the wrong moment */
	FUNC1(state, 0x23, FUNC0(state, 0x23) | (1 << 14));
	return 0;
}