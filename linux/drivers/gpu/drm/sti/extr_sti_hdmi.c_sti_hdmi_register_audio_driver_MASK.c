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
struct TYPE_2__ {int enabled; } ;
struct sti_hdmi {int /*<<< orphan*/  audio_pdev; TYPE_1__ audio; } ;
struct hdmi_codec_pdata {int max_i2s_channels; int i2s; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  codec_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_CODEC_DRV_NAME ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audio_codec_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hdmi_codec_pdata*,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
					  struct sti_hdmi *hdmi)
{
	struct hdmi_codec_pdata codec_data = {
		.ops = &audio_codec_ops,
		.max_i2s_channels = 8,
		.i2s = 1,
	};

	FUNC0("\n");

	hdmi->audio.enabled = false;

	hdmi->audio_pdev = FUNC5(
		dev, HDMI_CODEC_DRV_NAME, PLATFORM_DEVID_AUTO,
		&codec_data, sizeof(codec_data));

	if (FUNC2(hdmi->audio_pdev))
		return FUNC3(hdmi->audio_pdev);

	FUNC1("%s Driver bound %s\n", HDMI_CODEC_DRV_NAME, FUNC4(dev));

	return 0;
}