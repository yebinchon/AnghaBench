#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef  scalar_t__ s32 ;
struct TYPE_4__ {scalar_t__ read; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGCIQIN0 ; 
 int /*<<< orphan*/  AGCIQIN1 ; 
 int /*<<< orphan*/  AGCIQ_VALUE_FIELD ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 TYPE_1__* stv090x_rf_tab ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, u16 *strength)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg;
	s32 agc_0, agc_1, agc;
	s32 str;

	reg = FUNC3(state, AGCIQIN1);
	agc_1 = FUNC2(reg, AGCIQ_VALUE_FIELD);
	reg = FUNC3(state, AGCIQIN0);
	agc_0 = FUNC2(reg, AGCIQ_VALUE_FIELD);
	agc = FUNC1(agc_1, agc_0);

	str = FUNC4(stv090x_rf_tab,
		FUNC0(stv090x_rf_tab) - 1, agc);
	if (agc > stv090x_rf_tab[0].read)
		str = 0;
	else if (agc < stv090x_rf_tab[FUNC0(stv090x_rf_tab) - 1].read)
		str = -100;
	*strength = (str + 100) * 0xFFFF / 100;

	return 0;
}