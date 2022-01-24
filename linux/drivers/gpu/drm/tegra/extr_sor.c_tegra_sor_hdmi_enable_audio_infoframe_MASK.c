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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  channels; } ;
struct tegra_sor {int /*<<< orphan*/  dev; TYPE_1__ format; } ;
struct hdmi_audio_infoframe {int /*<<< orphan*/  channels; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFOFRAME_CTRL_CHECKSUM_ENABLE ; 
 int /*<<< orphan*/  INFOFRAME_CTRL_ENABLE ; 
 int /*<<< orphan*/  SOR_HDMI_AUDIO_INFOFRAME_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct hdmi_audio_infoframe*) ; 
 int FUNC3 (struct hdmi_audio_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_sor*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_sor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tegra_sor *sor)
{
	u8 buffer[FUNC0(AUDIO)];
	struct hdmi_audio_infoframe frame;
	u32 value;
	int err;

	err = FUNC2(&frame);
	if (err < 0) {
		FUNC1(sor->dev, "failed to setup audio infoframe: %d\n", err);
		return err;
	}

	frame.channels = sor->format.channels;

	err = FUNC3(&frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC1(sor->dev, "failed to pack audio infoframe: %d\n", err);
		return err;
	}

	FUNC4(sor, buffer, err);

	value = FUNC5(sor, SOR_HDMI_AUDIO_INFOFRAME_CTRL);
	value |= INFOFRAME_CTRL_CHECKSUM_ENABLE;
	value |= INFOFRAME_CTRL_ENABLE;
	FUNC6(sor, value, SOR_HDMI_AUDIO_INFOFRAME_CTRL);

	return 0;
}