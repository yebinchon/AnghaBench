#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ output_mpeg2_in_188_bytes; int /*<<< orphan*/  hostbus_diversity; } ;
struct dib8000_state {int output_mode; TYPE_1__ cfg; int /*<<< orphan*/ * fe; } ;

/* Variables and functions */
 int EINVAL ; 
#define  OUTMODE_ANALOG_ADC 134 
#define  OUTMODE_DIVERSITY 133 
#define  OUTMODE_HIGH_Z 132 
#define  OUTMODE_MPEG2_FIFO 131 
#define  OUTMODE_MPEG2_PAR_CONT_CLK 130 
#define  OUTMODE_MPEG2_PAR_GATED_CLK 129 
#define  OUTMODE_MPEG2_SERIAL 128 
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,...) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe, int mode)
{
	struct dib8000_state *state = fe->demodulator_priv;
	u16 outreg, fifo_threshold, smo_mode, sram = 0x0205;	/* by default SDRAM deintlv is enabled */

	state->output_mode = mode;
	outreg = 0;
	fifo_threshold = 1792;
	smo_mode = (FUNC0(state, 299) & 0x0050) | (1 << 1);

	FUNC3("-I-	Setting output mode for demod %p to %d\n",
			&state->fe[0], mode);

	switch (mode) {
	case OUTMODE_MPEG2_PAR_GATED_CLK:	// STBs with parallel gated clock
		outreg = (1 << 10);	/* 0x0400 */
		break;
	case OUTMODE_MPEG2_PAR_CONT_CLK:	// STBs with parallel continues clock
		outreg = (1 << 10) | (1 << 6);	/* 0x0440 */
		break;
	case OUTMODE_MPEG2_SERIAL:	// STBs with serial input
		outreg = (1 << 10) | (2 << 6) | (0 << 1);	/* 0x0482 */
		break;
	case OUTMODE_DIVERSITY:
		if (state->cfg.hostbus_diversity) {
			outreg = (1 << 10) | (4 << 6);	/* 0x0500 */
			sram &= 0xfdff;
		} else
			sram |= 0x0c00;
		break;
	case OUTMODE_MPEG2_FIFO:	// e.g. USB feeding
		smo_mode |= (3 << 1);
		fifo_threshold = 512;
		outreg = (1 << 10) | (5 << 6);
		break;
	case OUTMODE_HIGH_Z:	// disable
		outreg = 0;
		break;

	case OUTMODE_ANALOG_ADC:
		outreg = (1 << 10) | (3 << 6);
		FUNC1(state);
		break;

	default:
		FUNC3("Unhandled output_mode passed to be set for demod %p\n",
				&state->fe[0]);
		return -EINVAL;
	}

	if (state->cfg.output_mpeg2_in_188_bytes)
		smo_mode |= (1 << 5);

	FUNC2(state, 299, smo_mode);
	FUNC2(state, 300, fifo_threshold);	/* synchronous fread */
	FUNC2(state, 1286, outreg);
	FUNC2(state, 1291, sram);

	return 0;
}