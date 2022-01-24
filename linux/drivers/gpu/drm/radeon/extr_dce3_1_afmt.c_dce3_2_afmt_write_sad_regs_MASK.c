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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct cea_sad {scalar_t__ const format; int channels; int /*<<< orphan*/  freq; int /*<<< orphan*/  byte2; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const**) ; 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR0 151 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR1 150 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR10 149 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR11 148 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR13 147 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR2 146 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR3 145 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR4 144 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR5 143 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR6 142 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR7 141 
#define  AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR9 140 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  HDMI_AUDIO_CODING_TYPE_AAC_LC 139 
#define  HDMI_AUDIO_CODING_TYPE_AC3 138 
#define  HDMI_AUDIO_CODING_TYPE_ATRAC 137 
#define  HDMI_AUDIO_CODING_TYPE_DTS 136 
#define  HDMI_AUDIO_CODING_TYPE_DTS_HD 135 
#define  HDMI_AUDIO_CODING_TYPE_EAC3 134 
#define  HDMI_AUDIO_CODING_TYPE_MLP 133 
#define  HDMI_AUDIO_CODING_TYPE_MP3 132 
#define  HDMI_AUDIO_CODING_TYPE_MPEG1 131 
#define  HDMI_AUDIO_CODING_TYPE_MPEG2 130 
#define  HDMI_AUDIO_CODING_TYPE_PCM 129 
#define  HDMI_AUDIO_CODING_TYPE_WMA_PRO 128 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__ const,int) ; 

void FUNC6(struct drm_encoder *encoder,
	struct cea_sad *sads, int sad_count)
{
	int i;
	struct radeon_device *rdev = encoder->dev->dev_private;
	static const u16 eld_reg_to_type[][2] = {
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR0, HDMI_AUDIO_CODING_TYPE_PCM },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR1, HDMI_AUDIO_CODING_TYPE_AC3 },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR2, HDMI_AUDIO_CODING_TYPE_MPEG1 },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR3, HDMI_AUDIO_CODING_TYPE_MP3 },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR4, HDMI_AUDIO_CODING_TYPE_MPEG2 },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR5, HDMI_AUDIO_CODING_TYPE_AAC_LC },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR6, HDMI_AUDIO_CODING_TYPE_DTS },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR7, HDMI_AUDIO_CODING_TYPE_ATRAC },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR9, HDMI_AUDIO_CODING_TYPE_EAC3 },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR10, HDMI_AUDIO_CODING_TYPE_DTS_HD },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR11, HDMI_AUDIO_CODING_TYPE_MLP },
		{ AZ_F0_CODEC_PIN0_CONTROL_AUDIO_DESCRIPTOR13, HDMI_AUDIO_CODING_TYPE_WMA_PRO },
	};

	for (i = 0; i < FUNC0(eld_reg_to_type); i++) {
		u32 value = 0;
		u8 stereo_freqs = 0;
		int max_channels = -1;
		int j;

		for (j = 0; j < sad_count; j++) {
			struct cea_sad *sad = &sads[j];

			if (sad->format == eld_reg_to_type[i][1]) {
				if (sad->channels > max_channels) {
					value = FUNC2(sad->channels) |
						FUNC1(sad->byte2) |
						FUNC3(sad->freq);
					max_channels = sad->channels;
				}

				if (sad->format == HDMI_AUDIO_CODING_TYPE_PCM)
					stereo_freqs |= sad->freq;
				else
					break;
			}
		}

		value |= FUNC4(stereo_freqs);

		FUNC5(0, eld_reg_to_type[i][0], value);
	}
}