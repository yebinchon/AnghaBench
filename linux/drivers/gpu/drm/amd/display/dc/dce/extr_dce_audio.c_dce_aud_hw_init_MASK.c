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
typedef  int /*<<< orphan*/  uint32_t ;
struct dce_audio {int dummy; } ;
struct audio {scalar_t__ inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_RATE_CAPABILITIES ; 
 int /*<<< orphan*/  AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES ; 
 int /*<<< orphan*/  AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES ; 
 int /*<<< orphan*/  AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLKSTOP ; 
 int /*<<< orphan*/  CLOCK_GATING_DISABLE ; 
 struct dce_audio* FUNC2 (struct audio*) ; 
 int /*<<< orphan*/  EPSS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(
		struct audio *audio)
{
	uint32_t value;
	struct dce_audio *aud = FUNC2(audio);

	/* we only need to program the following registers once, so we only do
	it for the inst 0*/
	if (audio->inst != 0)
		return;

	/* Suport R5 - 32khz
	 * Suport R6 - 44.1khz
	 * Suport R7 - 48khz
	 */
	/*disable clock gating before write to endpoint register*/
	value = FUNC0(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL);
	FUNC5(value, 1,
			AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
			CLOCK_GATING_DISABLE);
	FUNC1(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);
	FUNC3(AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES,
			AUDIO_RATE_CAPABILITIES, 0x70);

	/*Keep alive bit to verify HW block in BU. */
	FUNC4(AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES,
			CLKSTOP, 1,
			EPSS, 1);
	FUNC5(value, 0,
			AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
			CLOCK_GATING_DISABLE);
	FUNC1(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);
}