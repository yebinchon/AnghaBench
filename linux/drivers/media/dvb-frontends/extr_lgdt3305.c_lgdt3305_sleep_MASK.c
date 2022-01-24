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
struct lgdt3305_state {int dummy; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LGDT3305_GEN_CTRL_3 ; 
 int /*<<< orphan*/  LGDT3305_GEN_CTRL_4 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lgdt3305_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct lgdt3305_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct lgdt3305_state *state = fe->demodulator_priv;
	u8 gen_ctrl_3, gen_ctrl_4;

	FUNC0("\n");

	gen_ctrl_3 = FUNC2(state, LGDT3305_GEN_CTRL_3);
	gen_ctrl_4 = FUNC2(state, LGDT3305_GEN_CTRL_4);

	/* hold in software reset while sleeping */
	gen_ctrl_3 &= ~0x01;
	/* tristate the IF-AGC pin */
	gen_ctrl_3 |=  0x02;
	/* tristate the RF-AGC pin */
	gen_ctrl_3 |=  0x04;

	/* disable vsb/qam module */
	gen_ctrl_4 &= ~0x01;
	/* disable adc module */
	gen_ctrl_4 &= ~0x02;

	FUNC1(state, LGDT3305_GEN_CTRL_3, gen_ctrl_3);
	FUNC1(state, LGDT3305_GEN_CTRL_4, gen_ctrl_4);

	return 0;
}