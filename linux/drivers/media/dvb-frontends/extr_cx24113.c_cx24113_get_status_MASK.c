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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct dvb_frontend {struct cx24113_state* tuner_priv; } ;
struct cx24113_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUNER_STATUS_LOCKED ; 
 int FUNC0 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u32 *status)
{
	struct cx24113_state *state = fe->tuner_priv;
	u8 r = (FUNC0(state, 0x10) & 0x02) >> 1;
	if (r)
		*status |= TUNER_STATUS_LOCKED;
	FUNC1("PLL locked: %d\n", r);
	return 0;
}