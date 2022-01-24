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
typedef  int u8 ;
typedef  int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int pid_ctrl_index; int /*<<< orphan*/  demod_lock; TYPE_1__* pid_ctrl; } ;
struct TYPE_2__ {int onoff; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB9000_PID_FILTER_CTRL ; 
 int EINTR ; 
 int FUNC0 (struct dib9000_state*,int) ; 
 int FUNC1 (struct dib9000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dvb_frontend *fe, u8 onoff)
{
	struct dib9000_state *state = fe->demodulator_priv;
	u16 val;
	int ret;

	if ((state->pid_ctrl_index != -2) && (state->pid_ctrl_index < 9)) {
		/* postpone the pid filtering cmd */
		FUNC2("pid filter cmd postpone\n");
		state->pid_ctrl_index++;
		state->pid_ctrl[state->pid_ctrl_index].cmd = DIB9000_PID_FILTER_CTRL;
		state->pid_ctrl[state->pid_ctrl_index].onoff = onoff;
		return 0;
	}

	if (FUNC3(&state->demod_lock) < 0) {
		FUNC2("could not get the lock\n");
		return -EINTR;
	}

	val = FUNC0(state, 294 + 1) & 0xffef;
	val |= (onoff & 0x1) << 4;

	FUNC2("PID filter enabled %d\n", onoff);
	ret = FUNC1(state, 294 + 1, val);
	FUNC4(&state->demod_lock);
	return ret;

}