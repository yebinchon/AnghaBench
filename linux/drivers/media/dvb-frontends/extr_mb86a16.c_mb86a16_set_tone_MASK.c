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
typedef  enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;

/* Variables and functions */
 int EINVAL ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  MB86A16_DCC1 ; 
 int MB86A16_DCC1_CTOE ; 
 int MB86A16_DCC1_DISTA ; 
 int /*<<< orphan*/  MB86A16_DCCOUT ; 
 int MB86A16_DCCOUT_DISEN ; 
 int /*<<< orphan*/  MB86A16_ERROR ; 
 int /*<<< orphan*/  MB86A16_TONEOUT2 ; 
#define  SEC_TONE_OFF 129 
#define  SEC_TONE_ON 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mb86a16_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
	struct mb86a16_state *state = fe->demodulator_priv;

	switch (tone) {
	case SEC_TONE_ON:
		if (FUNC1(state, MB86A16_TONEOUT2, 0x00) < 0)
			goto err;
		if (FUNC1(state, MB86A16_DCC1, MB86A16_DCC1_DISTA |
						       MB86A16_DCC1_CTOE) < 0)

			goto err;
		if (FUNC1(state, MB86A16_DCCOUT, MB86A16_DCCOUT_DISEN) < 0)
			goto err;
		break;
	case SEC_TONE_OFF:
		if (FUNC1(state, MB86A16_TONEOUT2, 0x04) < 0)
			goto err;
		if (FUNC1(state, MB86A16_DCC1, MB86A16_DCC1_DISTA) < 0)
			goto err;
		if (FUNC1(state, MB86A16_DCCOUT, 0x00) < 0)
			goto err;
		break;
	default:
		return -EINVAL;
	}
	return 0;

err:
	FUNC0(verbose, MB86A16_ERROR, 1, "I2C transfer error");
	return -EREMOTEIO;
}