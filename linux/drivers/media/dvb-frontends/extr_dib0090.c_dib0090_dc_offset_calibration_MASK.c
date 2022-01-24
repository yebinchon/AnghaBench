#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  p1g; } ;
struct dib0090_state {int bb7; int wbdmux; int step; int min_adc_diff; int adc_diff; int /*<<< orphan*/  calibrate; TYPE_2__* dc; TYPE_1__ identity; int /*<<< orphan*/  bb6; } ;
typedef  enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_5__ {int i; int bb1; int addr; int /*<<< orphan*/  pga; } ;

/* Variables and functions */
#define  CT_TUNER_START 135 
#define  CT_TUNER_STEP_0 134 
#define  CT_TUNER_STEP_1 133 
#define  CT_TUNER_STEP_2 132 
#define  CT_TUNER_STEP_3 131 
#define  CT_TUNER_STEP_4 130 
#define  CT_TUNER_STEP_5 129 
#define  CT_TUNER_STEP_6 128 
 int /*<<< orphan*/  DC_CAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* dc_p1g_table ; 
 TYPE_2__* dc_table ; 
 int FUNC1 (struct dib0090_state*,int*) ; 
 int FUNC2 (struct dib0090_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dib0090_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib0090_state*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct dib0090_state *state, enum frontend_tune_state *tune_state)
{
	int ret = 0;
	u16 reg;

	switch (*tune_state) {
	case CT_TUNER_START:
		FUNC5("Start DC offset calibration");

		/* force vcm2 = 0.8V */
		state->bb6 = 0;
		state->bb7 = 0x040d;

		/* the LNA AND LO are off */
		reg = FUNC2(state, 0x24) & 0x0ffb;	/* shutdown lna and lo */
		FUNC4(state, 0x24, reg);

		state->wbdmux = FUNC2(state, 0x10);
		FUNC4(state, 0x10, (state->wbdmux & ~(0xff << 3)) | (0x7 << 3) | 0x3);
		FUNC4(state, 0x23, FUNC2(state, 0x23) & ~(1 << 14));

		state->dc = dc_table;

		if (state->identity.p1g)
			state->dc = dc_p1g_table;

		/* fall through */
	case CT_TUNER_STEP_0:
		FUNC5("Start/continue DC calibration for %s path\n",
			(state->dc->i == 1) ? "I" : "Q");
		FUNC4(state, 0x01, state->dc->bb1);
		FUNC4(state, 0x07, state->bb7 | (state->dc->i << 7));

		state->step = 0;
		state->min_adc_diff = 1023;
		*tune_state = CT_TUNER_STEP_1;
		ret = 50;
		break;

	case CT_TUNER_STEP_1:
		FUNC3(state);
		*tune_state = CT_TUNER_STEP_2;
		break;

	case CT_TUNER_STEP_2:
	case CT_TUNER_STEP_3:
	case CT_TUNER_STEP_4:
		ret = FUNC1(state, tune_state);
		break;

	case CT_TUNER_STEP_5:	/* found an offset */
		FUNC5("adc_diff = %d, current step= %d\n", (u32) state->adc_diff, state->step);
		if (state->step == 0 && state->adc_diff < 0) {
			state->min_adc_diff = -1023;
			FUNC5("Change of sign of the minimum adc diff\n");
		}

		FUNC5("adc_diff = %d, min_adc_diff = %d current_step = %d\n", state->adc_diff, state->min_adc_diff, state->step);

		/* first turn for this frequency */
		if (state->step == 0) {
			if (state->dc->pga && state->adc_diff < 0)
				state->step = 0x10;
			if (state->dc->pga == 0 && state->adc_diff > 0)
				state->step = 0x10;
		}

		/* Look for a change of Sign in the Adc_diff.min_adc_diff is used to STORE the setp N-1 */
		if ((state->adc_diff & 0x8000) == (state->min_adc_diff & 0x8000) && FUNC6(state->step) < 15) {
			/* stop search when the delta the sign is changing and Steps =15 and Step=0 is force for continuance */
			state->step++;
			state->min_adc_diff = state->adc_diff;
			*tune_state = CT_TUNER_STEP_1;
		} else {
			/* the minimum was what we have seen in the step before */
			if (FUNC0(state->adc_diff) > FUNC0(state->min_adc_diff)) {
				FUNC5("Since adc_diff N = %d  > adc_diff step N-1 = %d, Come back one step\n", state->adc_diff, state->min_adc_diff);
				state->step--;
			}

			FUNC3(state);
			FUNC5("BB Offset Cal, BBreg=%hd,Offset=%hd,Value Set=%hd\n", state->dc->addr, state->adc_diff, state->step);

			state->dc++;
			if (state->dc->addr == 0)	/* done */
				*tune_state = CT_TUNER_STEP_6;
			else
				*tune_state = CT_TUNER_STEP_0;

		}
		break;

	case CT_TUNER_STEP_6:
		FUNC4(state, 0x07, state->bb7 & ~0x0008);
		FUNC4(state, 0x1f, 0x7);
		*tune_state = CT_TUNER_START;	/* reset done -> real tuning can now begin */
		state->calibrate &= ~DC_CAL;
	default:
		break;
	}
	return ret;
}