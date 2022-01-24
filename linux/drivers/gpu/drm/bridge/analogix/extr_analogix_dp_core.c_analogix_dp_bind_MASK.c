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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct drm_device {int dummy; } ;
struct analogix_dp_plat_data {int /*<<< orphan*/  encoder; } ;
struct TYPE_2__ {char* name; struct device* dev; int /*<<< orphan*/  transfer; } ;
struct analogix_dp_device {int panel_is_modeset; TYPE_1__ aux; struct analogix_dp_plat_data* plat_data; int /*<<< orphan*/  encoder; struct drm_device* drm_dev; int /*<<< orphan*/  irq; int /*<<< orphan*/ * hpd_gpiod; int /*<<< orphan*/  force_hpd; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/ * clock; int /*<<< orphan*/ * phy; struct device* dev; int /*<<< orphan*/  panel_lock; int /*<<< orphan*/  dpms_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  ENXIO ; 
 struct analogix_dp_device* FUNC1 (int /*<<< orphan*/ *) ; 
 struct analogix_dp_device* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 unsigned int IRQF_TRIGGER_FALLING ; 
 unsigned int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,struct analogix_dp_device*) ; 
 int FUNC6 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  analogix_dp_hardirq ; 
 int /*<<< orphan*/  analogix_dp_irq_thread ; 
 int /*<<< orphan*/  analogix_dpaux_transfer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,char*) ; 
 void* FUNC10 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct device*,struct resource*) ; 
 struct analogix_dp_device* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (struct device*,char*) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*,struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 struct platform_device* FUNC24 (struct device*) ; 

struct analogix_dp_device *
FUNC25(struct device *dev, struct drm_device *drm_dev,
		 struct analogix_dp_plat_data *plat_data)
{
	struct platform_device *pdev = FUNC24(dev);
	struct analogix_dp_device *dp;
	struct resource *res;
	unsigned int irq_flags;
	int ret;

	if (!plat_data) {
		FUNC8(dev, "Invalided input plat_data\n");
		return FUNC2(-EINVAL);
	}

	dp = FUNC12(dev, sizeof(struct analogix_dp_device), GFP_KERNEL);
	if (!dp)
		return FUNC2(-ENOMEM);

	dp->dev = &pdev->dev;
	dp->dpms_mode = DRM_MODE_DPMS_OFF;

	FUNC18(&dp->panel_lock);
	dp->panel_is_modeset = false;

	/*
	 * platform dp driver need containor_of the plat_data to get
	 * the driver private data, so we need to store the point of
	 * plat_data, not the context of plat_data.
	 */
	dp->plat_data = plat_data;

	ret = FUNC6(dp);
	if (ret)
		return FUNC2(ret);

	dp->phy = FUNC13(dp->dev, "dp");
	if (FUNC3(dp->phy)) {
		FUNC8(dp->dev, "no DP phy configured\n");
		ret = FUNC4(dp->phy);
		if (ret) {
			/*
			 * phy itself is not enabled, so we can move forward
			 * assigning NULL to phy pointer.
			 */
			if (ret == -ENOSYS || ret == -ENODEV)
				dp->phy = NULL;
			else
				return FUNC2(ret);
		}
	}

	dp->clock = FUNC9(&pdev->dev, "dp");
	if (FUNC3(dp->clock)) {
		FUNC8(&pdev->dev, "failed to get clock\n");
		return FUNC1(dp->clock);
	}

	FUNC7(dp->clock);

	res = FUNC21(pdev, IORESOURCE_MEM, 0);

	dp->reg_base = FUNC11(&pdev->dev, res);
	if (FUNC3(dp->reg_base))
		return FUNC1(dp->reg_base);

	dp->force_hpd = FUNC19(dev->of_node, "force-hpd");

	/* Try two different names */
	dp->hpd_gpiod = FUNC10(dev, "hpd", GPIOD_IN);
	if (!dp->hpd_gpiod)
		dp->hpd_gpiod = FUNC10(dev, "samsung,hpd",
							GPIOD_IN);
	if (FUNC3(dp->hpd_gpiod)) {
		FUNC8(dev, "error getting HDP GPIO: %ld\n",
			FUNC4(dp->hpd_gpiod));
		return FUNC1(dp->hpd_gpiod);
	}

	if (dp->hpd_gpiod) {
		/*
		 * Set up the hotplug GPIO from the device tree as an interrupt.
		 * Simply specifying a different interrupt in the device tree
		 * doesn't work since we handle hotplug rather differently when
		 * using a GPIO.  We also need the actual GPIO specifier so
		 * that we can get the current state of the GPIO.
		 */
		dp->irq = FUNC17(dp->hpd_gpiod);
		irq_flags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;
	} else {
		dp->irq = FUNC20(pdev, 0);
		irq_flags = 0;
	}

	if (dp->irq == -ENXIO) {
		FUNC8(&pdev->dev, "failed to get irq\n");
		return FUNC2(-ENODEV);
	}

	ret = FUNC14(&pdev->dev, dp->irq,
					analogix_dp_hardirq,
					analogix_dp_irq_thread,
					irq_flags, "analogix-dp", dp);
	if (ret) {
		FUNC8(&pdev->dev, "failed to request irq\n");
		goto err_disable_pm_runtime;
	}
	FUNC15(dp->irq);

	dp->drm_dev = drm_dev;
	dp->encoder = dp->plat_data->encoder;

	dp->aux.name = "DP-AUX";
	dp->aux.transfer = analogix_dpaux_transfer;
	dp->aux.dev = &pdev->dev;

	ret = FUNC16(&dp->aux);
	if (ret)
		return FUNC2(ret);

	FUNC23(dev);

	ret = FUNC5(drm_dev, dp);
	if (ret) {
		FUNC0("failed to create bridge (%d)\n", ret);
		goto err_disable_pm_runtime;
	}

	return dp;

err_disable_pm_runtime:

	FUNC22(dev);

	return FUNC2(ret);
}