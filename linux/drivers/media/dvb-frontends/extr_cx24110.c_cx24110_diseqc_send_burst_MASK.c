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
struct cx24110_state {int dummy; } ;
typedef  enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;

/* Variables and functions */
 int EINVAL ; 
 int SEC_MINI_A ; 
 int SEC_MINI_B ; 
 int FUNC0 (struct cx24110_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24110_state*,int,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
				     enum fe_sec_mini_cmd burst)
{
	int rv, bit;
	struct cx24110_state *state = fe->demodulator_priv;
	unsigned long timeout;

	if (burst == SEC_MINI_A)
		bit = 0x00;
	else if (burst == SEC_MINI_B)
		bit = 0x08;
	else
		return -EINVAL;

	rv = FUNC0(state, 0x77);
	if (!(rv & 0x04))
		FUNC1(state, 0x77, rv | 0x04);

	rv = FUNC0(state, 0x76);
	FUNC1(state, 0x76, ((rv & 0x90) | 0x40 | bit));
	timeout = jiffies + FUNC2(100);
	while (!FUNC3(jiffies, timeout) && !(FUNC0(state, 0x76) & 0x40))
		; /* wait for LNB ready */

	return 0;
}