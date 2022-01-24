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
struct TYPE_2__ {int /*<<< orphan*/  aud_input_chan_type; } ;
struct mtk_hdmi {int /*<<< orphan*/  dev; TYPE_1__ aud_param; } ;
struct hdmi_audio_infoframe {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_size; int /*<<< orphan*/  sample_frequency; int /*<<< orphan*/  coding_type; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_AUDIO_CODING_TYPE_STREAM ; 
 int /*<<< orphan*/  HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM ; 
 int /*<<< orphan*/  HDMI_AUDIO_SAMPLE_SIZE_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct hdmi_audio_infoframe*) ; 
 scalar_t__ FUNC2 (struct hdmi_audio_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hdmi*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct mtk_hdmi *hdmi)
{
	struct hdmi_audio_infoframe frame;
	u8 buffer[14];
	ssize_t err;

	err = FUNC1(&frame);
	if (err < 0) {
		FUNC0(hdmi->dev, "Failed to setup audio infoframe: %zd\n",
			err);
		return err;
	}

	frame.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
	frame.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
	frame.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
	frame.channels = FUNC3(
					hdmi->aud_param.aud_input_chan_type);

	err = FUNC2(&frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC0(hdmi->dev, "Failed to pack audio infoframe: %zd\n",
			err);
		return err;
	}

	FUNC4(hdmi, buffer, sizeof(buffer));
	return 0;
}