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
typedef  int u32 ;
struct stv0297_state {int dummy; } ;
struct dvb_frontend {struct stv0297_state* demodulator_priv; } ;

/* Variables and functions */
 int FUNC0 (struct stv0297_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stv0297_state*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u32 * ucblocks)
{
	struct stv0297_state *state = fe->demodulator_priv;

	FUNC1(state, 0xDF, 0x03, 0x03); /* freeze the counters */

	*ucblocks = (FUNC0(state, 0xD5) << 8)
		| FUNC0(state, 0xD4);

	FUNC1(state, 0xDF, 0x03, 0x02); /* clear the counters */
	FUNC1(state, 0xDF, 0x03, 0x01); /* re-enable the counters */

	return 0;
}