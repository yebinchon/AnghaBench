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
struct stb0899_state {int dummy; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef  enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  DISEQCMODE ; 
 int /*<<< orphan*/  DISPRECHARGE ; 
 int ETIMEDOUT ; 
#define  SEC_MINI_A 129 
#define  SEC_MINI_B 128 
 int /*<<< orphan*/  STB0899_DISCNTRL1 ; 
 int /*<<< orphan*/  STB0899_DISFIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct stb0899_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stb0899_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
				     enum fe_sec_mini_cmd burst)
{
	struct stb0899_state *state = fe->demodulator_priv;
	u8 reg, old_state;

	/* wait for diseqc idle	*/
	if (FUNC2(state, 100) < 0)
		return -ETIMEDOUT;

	reg = FUNC1(state, STB0899_DISCNTRL1);
	old_state = reg;
	/* set to burst mode	*/
	FUNC0(DISEQCMODE, reg, 0x03);
	FUNC0(DISPRECHARGE, reg, 0x01);
	FUNC3(state, STB0899_DISCNTRL1, reg);
	switch (burst) {
	case SEC_MINI_A:
		/* unmodulated	*/
		FUNC3(state, STB0899_DISFIFO, 0x00);
		break;
	case SEC_MINI_B:
		/* modulated	*/
		FUNC3(state, STB0899_DISFIFO, 0xff);
		break;
	}
	reg = FUNC1(state, STB0899_DISCNTRL1);
	FUNC0(DISPRECHARGE, reg, 0x00);
	FUNC3(state, STB0899_DISCNTRL1, reg);
	/* wait for diseqc idle	*/
	if (FUNC2(state, 100) < 0)
		return -ETIMEDOUT;

	/* restore state	*/
	FUNC3(state, STB0899_DISCNTRL1, old_state);

	return 0;
}