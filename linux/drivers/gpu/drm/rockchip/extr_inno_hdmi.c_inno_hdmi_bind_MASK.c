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
struct platform_device {int dummy; } ;
struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct inno_hdmi {int /*<<< orphan*/ * pclk; int /*<<< orphan*/ * ddc; TYPE_3__ encoder; TYPE_4__ connector; int /*<<< orphan*/  tmds_rate; struct device* dev; int /*<<< orphan*/ * regs; struct drm_device* drm_dev; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDMI_STATUS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct inno_hdmi*) ; 
 int /*<<< orphan*/ * FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,struct resource*) ; 
 struct inno_hdmi* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inno_hdmi*) ; 
 int /*<<< orphan*/  FUNC12 (struct inno_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inno_hdmi_hardirq ; 
 int /*<<< orphan*/ * FUNC14 (struct inno_hdmi*) ; 
 int /*<<< orphan*/  FUNC15 (struct inno_hdmi*) ; 
 int /*<<< orphan*/  inno_hdmi_irq ; 
 int FUNC16 (struct drm_device*,struct inno_hdmi*) ; 
 int /*<<< orphan*/  FUNC17 (struct inno_hdmi*) ; 
 int /*<<< orphan*/  m_MASK_INT_HOTPLUG ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 struct platform_device* FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct device *dev, struct device *master,
				 void *data)
{
	struct platform_device *pdev = FUNC22(dev);
	struct drm_device *drm = data;
	struct inno_hdmi *hdmi;
	struct resource *iores;
	int irq;
	int ret;

	hdmi = FUNC10(dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	hdmi->dev = dev;
	hdmi->drm_dev = drm;

	iores = FUNC19(pdev, IORESOURCE_MEM, 0);
	hdmi->regs = FUNC9(dev, iores);
	if (FUNC1(hdmi->regs))
		return FUNC2(hdmi->regs);

	hdmi->pclk = FUNC8(hdmi->dev, "pclk");
	if (FUNC1(hdmi->pclk)) {
		FUNC0(hdmi->dev, "Unable to get HDMI pclk clk\n");
		return FUNC2(hdmi->pclk);
	}

	ret = FUNC5(hdmi->pclk);
	if (ret) {
		FUNC0(hdmi->dev,
			      "Cannot enable HDMI pclk clock: %d\n", ret);
		return ret;
	}

	irq = FUNC18(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto err_disable_clk;
	}

	FUNC17(hdmi);

	hdmi->ddc = FUNC14(hdmi);
	if (FUNC1(hdmi->ddc)) {
		ret = FUNC2(hdmi->ddc);
		hdmi->ddc = NULL;
		goto err_disable_clk;
	}

	/*
	 * When IP controller haven't configured to an accurate video
	 * timing, then the TMDS clock source would be switched to
	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
	 * and reconfigure the DDC clock.
	 */
	hdmi->tmds_rate = FUNC4(hdmi->pclk);
	FUNC15(hdmi);

	ret = FUNC16(drm, hdmi);
	if (ret)
		goto err_put_adapter;

	FUNC7(dev, hdmi);

	/* Unmute hotplug interrupt */
	FUNC12(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, FUNC23(1));

	ret = FUNC11(dev, irq, inno_hdmi_hardirq,
					inno_hdmi_irq, IRQF_SHARED,
					FUNC6(dev), hdmi);
	if (ret < 0)
		goto err_cleanup_hdmi;

	return 0;
err_cleanup_hdmi:
	hdmi->connector.funcs->destroy(&hdmi->connector);
	hdmi->encoder.funcs->destroy(&hdmi->encoder);
err_put_adapter:
	FUNC13(hdmi->ddc);
err_disable_clk:
	FUNC3(hdmi->pclk);
	return ret;
}