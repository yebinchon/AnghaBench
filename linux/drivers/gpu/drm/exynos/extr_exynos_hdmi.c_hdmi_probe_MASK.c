#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct hdmi_audio_infoframe {int channels; int /*<<< orphan*/  sample_frequency; int /*<<< orphan*/  sample_size; int /*<<< orphan*/  coding_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdev; struct hdmi_audio_infoframe infoframe; } ;
struct hdmi_context {TYPE_3__* ddc_adpt; scalar_t__ regs_hdmiphy; TYPE_2__* hdmiphy_port; int /*<<< orphan*/ * notifier; TYPE_1__ audio; void* sysreg; TYPE_4__* drv_data; void* pmureg; int /*<<< orphan*/  irq; int /*<<< orphan*/  hotplug_work; void* regs; int /*<<< orphan*/  mutex; struct device* dev; } ;
struct TYPE_8__ {scalar_t__ has_sysreg; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDMI_AUDIO_CODING_TYPE_STREAM ; 
 int /*<<< orphan*/  HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM ; 
 int /*<<< orphan*/  HDMI_AUDIO_SAMPLE_SIZE_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 struct hdmi_context* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct hdmi_audio_infoframe*) ; 
 int /*<<< orphan*/  hdmi_component_ops ; 
 int FUNC11 (struct hdmi_context*) ; 
 int FUNC12 (struct hdmi_context*) ; 
 int /*<<< orphan*/  hdmi_hotplug_work_func ; 
 int /*<<< orphan*/  hdmi_irq_thread ; 
 int FUNC13 (struct hdmi_context*) ; 
 int FUNC14 (struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 void* FUNC24 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct hdmi_audio_infoframe *audio_infoframe;
	struct device *dev = &pdev->dev;
	struct hdmi_context *hdata;
	struct resource *res;
	int ret;

	hdata = FUNC8(dev, sizeof(struct hdmi_context), GFP_KERNEL);
	if (!hdata)
		return -ENOMEM;

	hdata->drv_data = FUNC17(dev);

	FUNC20(pdev, hdata);

	hdata->dev = dev;

	FUNC16(&hdata->mutex);

	ret = FUNC14(hdata);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC0(dev, "hdmi_resources_init failed\n");
		return ret;
	}

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	hdata->regs = FUNC7(dev, res);
	if (FUNC2(hdata->regs)) {
		ret = FUNC3(hdata->regs);
		return ret;
	}

	ret = FUNC11(hdata);
	if (ret)
		return ret;

	ret = FUNC12(hdata);
	if (ret)
		goto err_ddc;

	FUNC1(&hdata->hotplug_work, hdmi_hotplug_work_func);

	ret = FUNC9(dev, hdata->irq, NULL,
			hdmi_irq_thread, IRQF_TRIGGER_RISING |
			IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
			"hdmi", hdata);
	if (ret) {
		FUNC0(dev, "failed to register hdmi interrupt\n");
		goto err_hdmiphy;
	}

	hdata->pmureg = FUNC24(dev->of_node,
			"samsung,syscon-phandle");
	if (FUNC2(hdata->pmureg)) {
		FUNC0(dev, "syscon regmap lookup failed.\n");
		ret = -EPROBE_DEFER;
		goto err_hdmiphy;
	}

	if (hdata->drv_data->has_sysreg) {
		hdata->sysreg = FUNC24(dev->of_node,
				"samsung,sysreg-phandle");
		if (FUNC2(hdata->sysreg)) {
			FUNC0(dev, "sysreg regmap lookup failed.\n");
			ret = -EPROBE_DEFER;
			goto err_hdmiphy;
		}
	}

	hdata->notifier = FUNC4(&pdev->dev);
	if (hdata->notifier == NULL) {
		ret = -ENOMEM;
		goto err_hdmiphy;
	}

	FUNC22(dev);

	audio_infoframe = &hdata->audio.infoframe;
	FUNC10(audio_infoframe);
	audio_infoframe->coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
	audio_infoframe->sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
	audio_infoframe->sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
	audio_infoframe->channels = 2;

	ret = FUNC13(hdata);
	if (ret)
		goto err_notifier_put;

	ret = FUNC6(&pdev->dev, &hdmi_component_ops);
	if (ret)
		goto err_unregister_audio;

	return ret;

err_unregister_audio:
	FUNC18(hdata->audio.pdev);

err_notifier_put:
	FUNC5(hdata->notifier);
	FUNC21(dev);

err_hdmiphy:
	if (hdata->hdmiphy_port)
		FUNC23(&hdata->hdmiphy_port->dev);
	if (hdata->regs_hdmiphy)
		FUNC15(hdata->regs_hdmiphy);
err_ddc:
	FUNC23(&hdata->ddc_adpt->dev);

	return ret;
}