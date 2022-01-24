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
struct dvb_frontend {struct cx24117_state* demodulator_priv; } ;
struct cx24117_state {TYPE_1__* priv; } ;
struct cx24117_cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fe_lock; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_frontend*,struct cx24117_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, struct cx24117_cmd *cmd)
{
	struct cx24117_state *state = fe->demodulator_priv;
	int ret;

	FUNC1(&state->priv->fe_lock);
	ret = FUNC0(fe, cmd);
	FUNC2(&state->priv->fe_lock);

	return ret;
}