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
struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;
typedef  enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  MB86A16_DCC1 ; 
 int MB86A16_DCC1_DISTA ; 
 int MB86A16_DCC1_TBEN ; 
 int MB86A16_DCC1_TBO ; 
 int /*<<< orphan*/  MB86A16_DCCOUT ; 
 int MB86A16_DCCOUT_DISEN ; 
 int /*<<< orphan*/  MB86A16_ERROR ; 
#define  SEC_MINI_A 129 
#define  SEC_MINI_B 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mb86a16_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
				     enum fe_sec_mini_cmd burst)
{
	struct mb86a16_state *state = fe->demodulator_priv;

	switch (burst) {
	case SEC_MINI_A:
		if (FUNC1(state, MB86A16_DCC1, MB86A16_DCC1_DISTA |
						       MB86A16_DCC1_TBEN  |
						       MB86A16_DCC1_TBO) < 0)
			goto err;
		if (FUNC1(state, MB86A16_DCCOUT, MB86A16_DCCOUT_DISEN) < 0)
			goto err;
		break;
	case SEC_MINI_B:
		if (FUNC1(state, MB86A16_DCC1, MB86A16_DCC1_DISTA |
						       MB86A16_DCC1_TBEN) < 0)
			goto err;
		if (FUNC1(state, MB86A16_DCCOUT, MB86A16_DCCOUT_DISEN) < 0)
			goto err;
		break;
	}

	return 0;
err:
	FUNC0(verbose, MB86A16_ERROR, 1, "I2C transfer error");
	return -EREMOTEIO;
}