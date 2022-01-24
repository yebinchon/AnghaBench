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
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_60958_0 ; 
 int /*<<< orphan*/  AFMT_60958_CS_CLOCK_ACCURACY ; 
 int /*<<< orphan*/  AFMT_60958_CS_UPDATE ; 
 int /*<<< orphan*/  AFMT_60958_OSF_OVRD ; 
 int /*<<< orphan*/  AFMT_AUDIO_INFO_UPDATE ; 
 int /*<<< orphan*/  AFMT_AUDIO_LAYOUT_OVRD ; 
 int /*<<< orphan*/  AFMT_AUDIO_PACKET_CONTROL ; 
 int /*<<< orphan*/  AFMT_AUDIO_PACKET_CONTROL2 ; 
 int /*<<< orphan*/  AFMT_INFOFRAME_CONTROL0 ; 
 struct dce110_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DP_SEC_AUD_N ; 
 int /*<<< orphan*/  DP_SEC_AUD_N__DP_SEC_AUD_N__DEFAULT ; 
 int /*<<< orphan*/  DP_SEC_TIMESTAMP ; 
 int /*<<< orphan*/  DP_SEC_TIMESTAMP_MODE ; 
 int /*<<< orphan*/  DP_SEC_TIMESTAMP__DP_SEC_TIMESTAMP_MODE__AUTO_CALC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
	struct stream_encoder *enc)
{
	struct dce110_stream_encoder *enc110 = FUNC0(enc);

	/* --- DP Audio packet configurations --- */

	/* ATP Configuration */
	FUNC1(DP_SEC_AUD_N, 0,
			DP_SEC_AUD_N, DP_SEC_AUD_N__DP_SEC_AUD_N__DEFAULT);

	/* Async/auto-calc timestamp mode */
	FUNC1(DP_SEC_TIMESTAMP, 0, DP_SEC_TIMESTAMP_MODE,
			DP_SEC_TIMESTAMP__DP_SEC_TIMESTAMP_MODE__AUTO_CALC);

	/* --- The following are the registers
	 *  copied from the SetupHDMI --- */

	/* AFMT_AUDIO_PACKET_CONTROL */
	FUNC2(AFMT_AUDIO_PACKET_CONTROL, AFMT_60958_CS_UPDATE, 1);

	/* AFMT_AUDIO_PACKET_CONTROL2 */
	/* Program the ATP and AIP next */
	FUNC3(AFMT_AUDIO_PACKET_CONTROL2,
			AFMT_AUDIO_LAYOUT_OVRD, 0,
			AFMT_60958_OSF_OVRD, 0);

	/* AFMT_INFOFRAME_CONTROL0 */
	FUNC2(AFMT_INFOFRAME_CONTROL0, AFMT_AUDIO_INFO_UPDATE, 1);

	/* AFMT_60958_0__AFMT_60958_CS_CLOCK_ACCURACY_MASK */
	FUNC2(AFMT_60958_0, AFMT_60958_CS_CLOCK_ACCURACY, 0);
}