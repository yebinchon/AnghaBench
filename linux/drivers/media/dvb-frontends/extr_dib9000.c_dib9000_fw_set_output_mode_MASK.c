#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  output_mpeg2_in_188_bytes; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
struct TYPE_6__ {TYPE_2__ d9; } ;
struct dib9000_state {TYPE_3__ chip; int /*<<< orphan*/ * fe; } ;

/* Variables and functions */
 int EINVAL ; 
#define  OUTMODE_DIVERSITY 133 
#define  OUTMODE_HIGH_Z 132 
#define  OUTMODE_MPEG2_FIFO 131 
#define  OUTMODE_MPEG2_PAR_CONT_CLK 130 
#define  OUTMODE_MPEG2_PAR_GATED_CLK 129 
#define  OUTMODE_MPEG2_SERIAL 128 
 int /*<<< orphan*/  OUT_MSG_SET_OUTPUT_MODE ; 
 int FUNC0 (struct dib9000_state*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (struct dib9000_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib9000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dvb_frontend*,...) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, int mode)
{
	struct dib9000_state *state = fe->demodulator_priv;
	u16 outreg, smo_mode;

	FUNC3("setting output mode for demod %p to %d\n", fe, mode);

	switch (mode) {
	case OUTMODE_MPEG2_PAR_GATED_CLK:
		outreg = (1 << 10);	/* 0x0400 */
		break;
	case OUTMODE_MPEG2_PAR_CONT_CLK:
		outreg = (1 << 10) | (1 << 6);	/* 0x0440 */
		break;
	case OUTMODE_MPEG2_SERIAL:
		outreg = (1 << 10) | (2 << 6) | (0 << 1);	/* 0x0482 */
		break;
	case OUTMODE_DIVERSITY:
		outreg = (1 << 10) | (4 << 6);	/* 0x0500 */
		break;
	case OUTMODE_MPEG2_FIFO:
		outreg = (1 << 10) | (5 << 6);
		break;
	case OUTMODE_HIGH_Z:
		outreg = 0;
		break;
	default:
		FUNC3("Unhandled output_mode passed to be set for demod %p\n", &state->fe[0]);
		return -EINVAL;
	}

	FUNC2(state, 1795, outreg);

	switch (mode) {
	case OUTMODE_MPEG2_PAR_GATED_CLK:
	case OUTMODE_MPEG2_PAR_CONT_CLK:
	case OUTMODE_MPEG2_SERIAL:
	case OUTMODE_MPEG2_FIFO:
		smo_mode = (FUNC1(state, 295) & 0x0010) | (1 << 1);
		if (state->chip.d9.cfg.output_mpeg2_in_188_bytes)
			smo_mode |= (1 << 5);
		FUNC2(state, 295, smo_mode);
		break;
	}

	outreg = FUNC4(mode);
	return FUNC0(state, OUT_MSG_SET_OUTPUT_MODE, &outreg, 1);
}