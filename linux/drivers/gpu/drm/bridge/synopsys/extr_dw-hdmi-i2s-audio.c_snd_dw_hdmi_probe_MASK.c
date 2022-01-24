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
struct platform_device_info {int size_data; int /*<<< orphan*/  dma_mask; struct hdmi_codec_pdata* data; int /*<<< orphan*/  name; int /*<<< orphan*/  id; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; struct dw_hdmi_i2s_audio_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hdmi_codec_pdata {int i2s; int max_i2s_channels; struct dw_hdmi_i2s_audio_data* data; int /*<<< orphan*/ * ops; } ;
struct dw_hdmi_i2s_audio_data {int dummy; } ;
typedef  int /*<<< orphan*/  pdevinfo ;
typedef  int /*<<< orphan*/  pdata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HDMI_CODEC_DRV_NAME ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct platform_device*) ; 
 int /*<<< orphan*/  dw_hdmi_i2s_ops ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device_info*,int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC5 (struct platform_device_info*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct dw_hdmi_i2s_audio_data *audio = pdev->dev.platform_data;
	struct platform_device_info pdevinfo;
	struct hdmi_codec_pdata pdata;
	struct platform_device *platform;

	pdata.ops		= &dw_hdmi_i2s_ops;
	pdata.i2s		= 1;
	pdata.max_i2s_channels	= 8;
	pdata.data		= audio;

	FUNC4(&pdevinfo, 0, sizeof(pdevinfo));
	pdevinfo.parent		= pdev->dev.parent;
	pdevinfo.id		= PLATFORM_DEVID_AUTO;
	pdevinfo.name		= HDMI_CODEC_DRV_NAME;
	pdevinfo.data		= &pdata;
	pdevinfo.size_data	= sizeof(pdata);
	pdevinfo.dma_mask	= FUNC0(32);

	platform = FUNC5(&pdevinfo);
	if (FUNC1(platform))
		return FUNC2(platform);

	FUNC3(&pdev->dev, platform);

	return 0;
}