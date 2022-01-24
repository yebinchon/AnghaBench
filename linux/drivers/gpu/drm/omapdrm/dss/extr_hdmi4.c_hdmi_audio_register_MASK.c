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
struct omap_hdmi_audio_pdata {int version; int /*<<< orphan*/ * ops; int /*<<< orphan*/  audio_dma_addr; int /*<<< orphan*/ * dev; } ;
struct omap_hdmi {int /*<<< orphan*/  audio_pdev; TYPE_1__* pdev; int /*<<< orphan*/  wp; } ;
typedef  int /*<<< orphan*/  pdata ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdmi_audio_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct omap_hdmi_audio_pdata*,int) ; 

__attribute__((used)) static int FUNC4(struct omap_hdmi *hdmi)
{
	struct omap_hdmi_audio_pdata pdata = {
		.dev = &hdmi->pdev->dev,
		.version = 4,
		.audio_dma_addr = FUNC2(&hdmi->wp),
		.ops = &hdmi_audio_ops,
	};

	hdmi->audio_pdev = FUNC3(
		&hdmi->pdev->dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
		&pdata, sizeof(pdata));

	if (FUNC0(hdmi->audio_pdev))
		return FUNC1(hdmi->audio_pdev);

	return 0;
}