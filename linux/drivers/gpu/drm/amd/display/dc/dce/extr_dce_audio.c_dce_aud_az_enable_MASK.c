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
struct audio {int /*<<< orphan*/  inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ENABLED ; 
 int /*<<< orphan*/  AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOCK_GATING_DISABLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct audio *audio)
{
	uint32_t value = FUNC0(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL);
	FUNC2();

	FUNC4(value, 1,
			    AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
			    CLOCK_GATING_DISABLE);
	FUNC4(value, 1,
			    AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
			    AUDIO_ENABLED);

	FUNC1(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);
	FUNC4(value, 0,
			AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL,
			CLOCK_GATING_DISABLE);
	FUNC1(AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, value);

	FUNC3("\n\t========= AUDIO:dce_aud_az_enable: index: %u  data: 0x%x\n",
			audio->inst, value);
}