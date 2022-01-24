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
struct dib0090_state {int wbdmux; int bias; int adc_diff; TYPE_1__* config; int /*<<< orphan*/  calibrate; int /*<<< orphan*/  temperature; } ;
typedef  int s16 ;
typedef  enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_2__ {int /*<<< orphan*/  analog_output; } ;

/* Variables and functions */
#define  CT_TUNER_START 131 
#define  CT_TUNER_STEP_0 130 
#define  CT_TUNER_STEP_1 129 
#define  CT_TUNER_STEP_2 128 
 int /*<<< orphan*/  TEMP_CAL ; 
 void* FUNC0 (struct dib0090_state*) ; 
 int FUNC1 (struct dib0090_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib0090_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dib0090_state *state, enum frontend_tune_state *tune_state)
{
	int ret = 15;
	s16 val;

	switch (*tune_state) {
	case CT_TUNER_START:
		state->wbdmux = FUNC1(state, 0x10);
		FUNC2(state, 0x10, (state->wbdmux & ~(0xff << 3)) | (0x8 << 3));

		state->bias = FUNC1(state, 0x13);
		FUNC2(state, 0x13, state->bias | (0x3 << 8));

		*tune_state = CT_TUNER_STEP_0;
		/* wait for the WBDMUX to switch and for the ADC to sample */
		break;

	case CT_TUNER_STEP_0:
		state->adc_diff = FUNC0(state);
		FUNC2(state, 0x13, (state->bias & ~(0x3 << 8)) | (0x2 << 8));
		*tune_state = CT_TUNER_STEP_1;
		break;

	case CT_TUNER_STEP_1:
		val = FUNC0(state);
		state->temperature = ((s16) ((val - state->adc_diff) * 180) >> 8) + 55;

		FUNC3("temperature: %d C\n", state->temperature - 30);

		*tune_state = CT_TUNER_STEP_2;
		break;

	case CT_TUNER_STEP_2:
		FUNC2(state, 0x13, state->bias);
		FUNC2(state, 0x10, state->wbdmux);	/* write back original WBDMUX */

		*tune_state = CT_TUNER_START;
		state->calibrate &= ~TEMP_CAL;
		if (state->config->analog_output == 0)
			FUNC2(state, 0x23, FUNC1(state, 0x23) | (1 << 14));

		break;

	default:
		ret = 0;
		break;
	}
	return ret;
}