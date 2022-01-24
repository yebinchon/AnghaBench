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
struct zx_hdmi {void* xclk; struct device* dev; void* osc_clk; void* cec_clk; void* mmio; struct drm_device* drm; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct zx_hdmi*) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct zx_hdmi* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zx_hdmi*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC11 (struct device*) ; 
 int FUNC12 (struct zx_hdmi*) ; 
 int FUNC13 (struct zx_hdmi*) ; 
 int /*<<< orphan*/  zx_hdmi_irq_handler ; 
 int /*<<< orphan*/  zx_hdmi_irq_thread ; 
 int FUNC14 (struct drm_device*,struct zx_hdmi*) ; 

__attribute__((used)) static int FUNC15(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC11(dev);
	struct drm_device *drm = data;
	struct resource *res;
	struct zx_hdmi *hdmi;
	int irq;
	int ret;

	hdmi = FUNC7(dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	hdmi->dev = dev;
	hdmi->drm = drm;

	FUNC4(dev, hdmi);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	hdmi->mmio = FUNC6(dev, res);
	if (FUNC1(hdmi->mmio)) {
		ret = FUNC2(hdmi->mmio);
		FUNC0(dev, "failed to remap hdmi region: %d\n", ret);
		return ret;
	}

	irq = FUNC9(pdev, 0);
	if (irq < 0)
		return irq;

	hdmi->cec_clk = FUNC5(hdmi->dev, "osc_cec");
	if (FUNC1(hdmi->cec_clk)) {
		ret = FUNC2(hdmi->cec_clk);
		FUNC0(dev, "failed to get cec_clk: %d\n", ret);
		return ret;
	}

	hdmi->osc_clk = FUNC5(hdmi->dev, "osc_clk");
	if (FUNC1(hdmi->osc_clk)) {
		ret = FUNC2(hdmi->osc_clk);
		FUNC0(dev, "failed to get osc_clk: %d\n", ret);
		return ret;
	}

	hdmi->xclk = FUNC5(hdmi->dev, "xclk");
	if (FUNC1(hdmi->xclk)) {
		ret = FUNC2(hdmi->xclk);
		FUNC0(dev, "failed to get xclk: %d\n", ret);
		return ret;
	}

	ret = FUNC13(hdmi);
	if (ret) {
		FUNC0(dev, "failed to register ddc: %d\n", ret);
		return ret;
	}

	ret = FUNC12(hdmi);
	if (ret) {
		FUNC0(dev, "failed to register audio: %d\n", ret);
		return ret;
	}

	ret = FUNC14(drm, hdmi);
	if (ret) {
		FUNC0(dev, "failed to register hdmi: %d\n", ret);
		return ret;
	}

	ret = FUNC8(dev, irq, zx_hdmi_irq_handler,
					zx_hdmi_irq_thread, IRQF_SHARED,
					FUNC3(dev), hdmi);
	if (ret) {
		FUNC0(dev, "failed to request threaded irq: %d\n", ret);
		return ret;
	}

	return 0;
}