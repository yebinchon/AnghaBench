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
typedef  int u16 ;
struct stv0288_state {int dummy; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct stv0288_state*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u16 *strength)
{
	struct stv0288_state *state = fe->demodulator_priv;

	s32 signal =  0xffff - ((FUNC1(state, 0x10) << 8));


	signal = signal * 5 / 4;
	*strength = (signal > 0xffff) ? 0xffff : (signal < 0) ? 0 : signal;
	FUNC0("stv0288_read_signal_strength %d\n", *strength);

	return 0;
}