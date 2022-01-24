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
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;
struct cx24110_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct cx24110_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24110_state*,int,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend* fe,
				   struct dvb_diseqc_master_cmd *cmd)
{
	int i, rv;
	struct cx24110_state *state = fe->demodulator_priv;
	unsigned long timeout;

	if (cmd->msg_len < 3 || cmd->msg_len > 6)
		return -EINVAL;  /* not implemented */

	for (i = 0; i < cmd->msg_len; i++)
		FUNC1(state, 0x79 + i, cmd->msg[i]);

	rv = FUNC0(state, 0x77);
	if (rv & 0x04) {
		FUNC1(state, 0x77, rv & ~0x04);
		FUNC3(30); /* reportedly fixes switching problems */
	}

	rv = FUNC0(state, 0x76);

	FUNC1(state, 0x76, ((rv & 0x90) | 0x40) | ((cmd->msg_len-3) & 3));
	timeout = jiffies + FUNC2(100);
	while (!FUNC4(jiffies, timeout) && !(FUNC0(state, 0x76) & 0x40))
		; /* wait for LNB ready */

	return 0;
}