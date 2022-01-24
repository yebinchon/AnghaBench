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
struct dvb_frontend {struct ds3000_state* demodulator_priv; } ;
struct ds3000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ds3000_state*,int,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, int enable)
{
	struct ds3000_state *state = fe->demodulator_priv;

	if (enable)
		FUNC0(state, 0x03, 0x12);
	else
		FUNC0(state, 0x03, 0x02);

	return 0;
}