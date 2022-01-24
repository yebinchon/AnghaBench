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
typedef  scalar_t__ u32 ;
struct m88rs2000_state {int dummy; } ;
struct dvb_frontend {struct m88rs2000_state* demodulator_priv; } ;
typedef  int s32 ;
typedef  int s16 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct m88rs2000_state*,int) ; 
 int FUNC2 (struct m88rs2000_state*,int,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, s16 offset)
{
	struct m88rs2000_state *state = fe->demodulator_priv;
	u32 mclk;
	s32 tmp;
	u8 reg;
	int ret;

	mclk = FUNC0(fe);
	if (!mclk)
		return -EINVAL;

	tmp = (offset * 4096 + (s32)mclk / 2) / (s32)mclk;
	if (tmp < 0)
		tmp += 4096;

	/* Carrier Offset */
	ret = FUNC2(state, 0x9c, (u8)(tmp >> 4));

	reg = FUNC1(state, 0x9d);
	reg &= 0xf;
	reg |= (u8)(tmp & 0xf) << 4;

	ret |= FUNC2(state, 0x9d, reg);

	return ret;
}