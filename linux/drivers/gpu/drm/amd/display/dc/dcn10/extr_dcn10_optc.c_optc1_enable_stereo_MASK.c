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
typedef  int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct dc_crtc_timing {int dummy; } ;
struct crtc_stereo_flags {scalar_t__ FRAME_PACKED; scalar_t__ RIGHT_EYE_POLARITY; scalar_t__ PROGRAM_STEREO; scalar_t__ DISABLE_STEREO_DP_SYNC; scalar_t__ PROGRAM_POLARITY; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_3D_STRUCTURE_CONTROL ; 
 int /*<<< orphan*/  OTG_3D_STRUCTURE_EN ; 
 int /*<<< orphan*/  OTG_3D_STRUCTURE_STEREO_SEL_OVR ; 
 int /*<<< orphan*/  OTG_DISABLE_STEREOSYNC_OUTPUT_FOR_DP ; 
 int /*<<< orphan*/  OTG_STEREO_CONTROL ; 
 int /*<<< orphan*/  OTG_STEREO_EN ; 
 int /*<<< orphan*/  OTG_STEREO_EYE_FLAG_POLARITY ; 
 int /*<<< orphan*/  OTG_STEREO_SYNC_OUTPUT_LINE_NUM ; 
 int /*<<< orphan*/  OTG_STEREO_SYNC_OUTPUT_POLARITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timing_generator *optc,
	const struct dc_crtc_timing *timing, struct crtc_stereo_flags *flags)
{
	struct optc *optc1 = FUNC0(optc);

	if (flags) {
		uint32_t stereo_en;
		stereo_en = flags->FRAME_PACKED == 0 ? 1 : 0;

		if (flags->PROGRAM_STEREO)
			FUNC3(OTG_STEREO_CONTROL,
				OTG_STEREO_EN, stereo_en,
				OTG_STEREO_SYNC_OUTPUT_LINE_NUM, 0,
				OTG_STEREO_SYNC_OUTPUT_POLARITY, 0);

		if (flags->PROGRAM_POLARITY)
			FUNC1(OTG_STEREO_CONTROL,
				OTG_STEREO_EYE_FLAG_POLARITY,
				flags->RIGHT_EYE_POLARITY == 0 ? 0 : 1);

		if (flags->DISABLE_STEREO_DP_SYNC)
			FUNC1(OTG_STEREO_CONTROL,
				OTG_DISABLE_STEREOSYNC_OUTPUT_FOR_DP, 1);

		if (flags->PROGRAM_STEREO)
			FUNC2(OTG_3D_STRUCTURE_CONTROL,
				OTG_3D_STRUCTURE_EN, flags->FRAME_PACKED,
				OTG_3D_STRUCTURE_STEREO_SEL_OVR, flags->FRAME_PACKED);

	}
}