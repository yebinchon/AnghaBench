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
struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct rk3066_hdmi {int /*<<< orphan*/ * hclk; int /*<<< orphan*/ * ddc; TYPE_3__ encoder; TYPE_4__ connector; int /*<<< orphan*/ * grf_regmap; int /*<<< orphan*/ * regs; struct drm_device* drm_dev; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDMI_INTERNAL_CLK_DIVIDER ; 
 int HDMI_INTR_HOTPLUG ; 
 int /*<<< orphan*/  HDMI_INTR_MASK1 ; 
 int /*<<< orphan*/  HDMI_INTR_MASK2 ; 
 int /*<<< orphan*/  HDMI_INTR_MASK3 ; 
 int /*<<< orphan*/  HDMI_INTR_MASK4 ; 
 int /*<<< orphan*/  HDMI_SYS_POWER_MODE_A ; 
 int /*<<< orphan*/  HDMI_SYS_POWER_MODE_B ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct rk3066_hdmi*) ; 
 int /*<<< orphan*/ * FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (struct device*,struct resource*) ; 
 struct rk3066_hdmi* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rk3066_hdmi*) ; 
 int /*<<< orphan*/  FUNC11 (struct rk3066_hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk3066_hdmi_hardirq ; 
 int /*<<< orphan*/ * FUNC15 (struct rk3066_hdmi*) ; 
 int /*<<< orphan*/  rk3066_hdmi_irq ; 
 int FUNC16 (struct drm_device*,struct rk3066_hdmi*) ; 
 int /*<<< orphan*/  FUNC17 (struct rk3066_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,char*) ; 
 struct platform_device* FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 

__attribute__((used)) static int FUNC23(struct device *dev, struct device *master,
			    void *data)
{
	struct platform_device *pdev = FUNC21(dev);
	struct drm_device *drm = data;
	struct rk3066_hdmi *hdmi;
	struct resource *iores;
	int irq;
	int ret;

	hdmi = FUNC9(dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	hdmi->dev = dev;
	hdmi->drm_dev = drm;

	iores = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (!iores)
		return -ENXIO;

	hdmi->regs = FUNC8(dev, iores);
	if (FUNC1(hdmi->regs))
		return FUNC2(hdmi->regs);

	irq = FUNC13(pdev, 0);
	if (irq < 0)
		return irq;

	hdmi->hclk = FUNC7(dev, "hclk");
	if (FUNC1(hdmi->hclk)) {
		FUNC0(dev, "unable to get HDMI hclk clock\n");
		return FUNC2(hdmi->hclk);
	}

	ret = FUNC4(hdmi->hclk);
	if (ret) {
		FUNC0(dev, "cannot enable HDMI hclk clock: %d\n", ret);
		return ret;
	}

	hdmi->grf_regmap = FUNC20(dev->of_node,
							   "rockchip,grf");
	if (FUNC1(hdmi->grf_regmap)) {
		FUNC0(dev, "unable to get rockchip,grf\n");
		ret = FUNC2(hdmi->grf_regmap);
		goto err_disable_hclk;
	}

	/* internal hclk = hdmi_hclk / 25 */
	FUNC11(hdmi, HDMI_INTERNAL_CLK_DIVIDER, 25);

	hdmi->ddc = FUNC15(hdmi);
	if (FUNC1(hdmi->ddc)) {
		ret = FUNC2(hdmi->ddc);
		hdmi->ddc = NULL;
		goto err_disable_hclk;
	}

	FUNC17(hdmi, HDMI_SYS_POWER_MODE_B);
	FUNC22(999, 1000);
	FUNC11(hdmi, HDMI_INTR_MASK1, HDMI_INTR_HOTPLUG);
	FUNC11(hdmi, HDMI_INTR_MASK2, 0);
	FUNC11(hdmi, HDMI_INTR_MASK3, 0);
	FUNC11(hdmi, HDMI_INTR_MASK4, 0);
	FUNC17(hdmi, HDMI_SYS_POWER_MODE_A);

	ret = FUNC16(drm, hdmi);
	if (ret)
		goto err_disable_i2c;

	FUNC6(dev, hdmi);

	ret = FUNC10(dev, irq, rk3066_hdmi_hardirq,
					rk3066_hdmi_irq, IRQF_SHARED,
					FUNC5(dev), hdmi);
	if (ret) {
		FUNC0(dev, "failed to request hdmi irq: %d\n", ret);
		goto err_cleanup_hdmi;
	}

	return 0;

err_cleanup_hdmi:
	hdmi->connector.funcs->destroy(&hdmi->connector);
	hdmi->encoder.funcs->destroy(&hdmi->encoder);
err_disable_i2c:
	FUNC12(hdmi->ddc);
err_disable_hclk:
	FUNC3(hdmi->hclk);

	return ret;
}