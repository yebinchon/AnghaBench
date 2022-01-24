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
typedef  int u32 ;
struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;

/* Variables and functions */
 int FUNC0 (struct m88rs2000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct m88rs2000_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u32 *ber)
{
	struct m88rs2000_state *state = fe->demodulator_priv;
	u8 tmp0, tmp1;

	FUNC1(state, 0x9a, 0x30);
	tmp0 = FUNC0(state, 0xd8);
	if ((tmp0 & 0x10) != 0) {
		FUNC1(state, 0x9a, 0xb0);
		*ber = 0xffffffff;
		return 0;
	}

	*ber = (FUNC0(state, 0xd7) << 8) |
		FUNC0(state, 0xd6);

	tmp1 = FUNC0(state, 0xd9);
	FUNC1(state, 0xd9, (tmp1 & ~7) | 4);
	/* needs twice */
	FUNC1(state, 0xd8, (tmp0 & ~8) | 0x30);
	FUNC1(state, 0xd8, (tmp0 & ~8) | 0x30);
	FUNC1(state, 0x9a, 0xb0);

	return 0;
}