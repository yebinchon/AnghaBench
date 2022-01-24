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
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;
typedef  enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;

/* Variables and functions */
 int EINVAL ; 
#define  SEC_TONE_OFF 129 
#define  SEC_TONE_ON 128 
 int FUNC0 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24123_state*) ; 
 int FUNC2 (struct cx24123_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
	struct cx24123_state *state = fe->demodulator_priv;
	u8 val;

	/* wait for diseqc queue ready */
	FUNC1(state);

	val = FUNC0(state, 0x29) & ~0x40;

	switch (tone) {
	case SEC_TONE_ON:
		FUNC3("setting tone on\n");
		return FUNC2(state, 0x29, val | 0x10);
	case SEC_TONE_OFF:
		FUNC3("setting tone off\n");
		return FUNC2(state, 0x29, val & 0xef);
	default:
		FUNC4("CASE reached default with tone=%d\n", tone);
		return -EINVAL;
	}

	return 0;
}