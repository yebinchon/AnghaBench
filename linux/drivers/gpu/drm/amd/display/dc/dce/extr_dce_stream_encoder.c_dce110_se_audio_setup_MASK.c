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
typedef  int /*<<< orphan*/  uint32_t ;
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ALLSPEAKERS; } ;
struct TYPE_5__ {int /*<<< orphan*/  speaker_flags; TYPE_1__ info; } ;
struct audio_info {TYPE_2__ flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  all; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_AUDIO_CHANNEL_ENABLE ; 
 int /*<<< orphan*/  AFMT_AUDIO_PACKET_CONTROL2 ; 
 int /*<<< orphan*/  AFMT_AUDIO_SRC_CONTROL ; 
 int /*<<< orphan*/  AFMT_AUDIO_SRC_SELECT ; 
 int /*<<< orphan*/  FUNC0 (struct audio_info*) ; 
 struct dce110_stream_encoder* FUNC1 (struct stream_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(
	struct stream_encoder *enc,
	unsigned int az_inst,
	struct audio_info *audio_info)
{
	struct dce110_stream_encoder *enc110 = FUNC1(enc);

	uint32_t speakers = 0;
	uint32_t channels = 0;

	FUNC0(audio_info);
	if (audio_info == NULL)
		/* This should not happen.it does so we don't get BSOD*/
		return;

	speakers = audio_info->flags.info.ALLSPEAKERS;
	channels = FUNC4(audio_info->flags.speaker_flags).all;

	/* setup the audio stream source select (audio -> dig mapping) */
	FUNC2(AFMT_AUDIO_SRC_CONTROL, 0, AFMT_AUDIO_SRC_SELECT, az_inst);

	/* Channel allocation */
	FUNC3(AFMT_AUDIO_PACKET_CONTROL2, AFMT_AUDIO_CHANNEL_ENABLE, channels);
}