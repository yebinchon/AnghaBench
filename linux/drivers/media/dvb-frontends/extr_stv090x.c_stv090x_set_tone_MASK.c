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
typedef  int /*<<< orphan*/  u32 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef  enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;

/* Variables and functions */
 int /*<<< orphan*/  DISEQC_RESET_FIELD ; 
 int /*<<< orphan*/  DISTXCTL ; 
 int /*<<< orphan*/  DISTX_MODE_FIELD ; 
 int EINVAL ; 
 int /*<<< orphan*/  FE_ERROR ; 
#define  SEC_TONE_OFF 129 
#define  SEC_TONE_ON 128 
 int /*<<< orphan*/  FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg;

	reg = FUNC0(state, DISTXCTL);
	switch (tone) {
	case SEC_TONE_ON:
		FUNC1(reg, DISTX_MODE_FIELD, 0);
		FUNC1(reg, DISEQC_RESET_FIELD, 1);
		if (FUNC2(state, DISTXCTL, reg) < 0)
			goto err;
		FUNC1(reg, DISEQC_RESET_FIELD, 0);
		if (FUNC2(state, DISTXCTL, reg) < 0)
			goto err;
		break;

	case SEC_TONE_OFF:
		FUNC1(reg, DISTX_MODE_FIELD, 0);
		FUNC1(reg, DISEQC_RESET_FIELD, 1);
		if (FUNC2(state, DISTXCTL, reg) < 0)
			goto err;
		break;
	default:
		return -EINVAL;
	}

	return 0;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}