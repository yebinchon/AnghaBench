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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * notifier_call; } ;
struct tilcdc_drm_private {int is_componentized; char const* max_bandwidth; char const* max_width; char const* max_pixelclock; int rev; scalar_t__ num_encoders; scalar_t__ num_connectors; int is_registered; int /*<<< orphan*/  external_connector; TYPE_1__ freq_transition; void* num_pixelformats; void* pixelformats; struct drm_device* clk; int /*<<< orphan*/  mmio; int /*<<< orphan*/  wq; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct drm_driver {int dummy; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  LCDC_PID_REG ; 
 int FUNC3 (struct drm_device*) ; 
 char const* TILCDC_DEFAULT_MAX_BANDWIDTH ; 
 char const* TILCDC_DEFAULT_MAX_PIXELCLOCK ; 
 char const* TILCDC_DEFAULT_MAX_WIDTH ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,struct drm_device*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cpufreq_transition ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int) ; 
 struct tilcdc_drm_private* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC11 (struct drm_driver*,struct device*) ; 
 int FUNC12 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*,int) ; 
 int FUNC14 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*) ; 
 int FUNC18 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC22 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (struct resource*) ; 
 scalar_t__ FUNC30 (char const*,char*) ; 
 int FUNC31 (struct drm_device*) ; 
 int FUNC32 (struct drm_device*) ; 
 void* tilcdc_crossed_formats ; 
 int FUNC33 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct drm_device*) ; 
 scalar_t__ FUNC35 (struct device*,int /*<<< orphan*/ *) ; 
 void* tilcdc_legacy_formats ; 
 int FUNC36 (struct drm_device*,int /*<<< orphan*/ ) ; 
 void* tilcdc_rev1_formats ; 
 void* tilcdc_straight_formats ; 
 struct platform_device* FUNC37 (struct device*) ; 

__attribute__((used)) static int FUNC38(struct drm_driver *ddrv, struct device *dev)
{
	struct drm_device *ddev;
	struct platform_device *pdev = FUNC37(dev);
	struct device_node *node = dev->of_node;
	struct tilcdc_drm_private *priv;
	struct resource *res;
	u32 bpp = 0;
	int ret;

	priv = FUNC10(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	ddev = FUNC11(ddrv, dev);
	if (FUNC2(ddev))
		return FUNC3(ddev);

	ddev->dev_private = priv;
	FUNC25(pdev, ddev);
	FUNC16(ddev);

	priv->is_componentized =
		FUNC35(dev, NULL) > 0;

	priv->wq = FUNC4("tilcdc", 0);
	if (!priv->wq) {
		ret = -ENOMEM;
		goto init_failed;
	}

	res = FUNC24(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC8(dev, "failed to get memory resource\n");
		ret = -EINVAL;
		goto init_failed;
	}

	priv->mmio = FUNC19(res->start, FUNC29(res));
	if (!priv->mmio) {
		FUNC8(dev, "failed to ioremap\n");
		ret = -ENOMEM;
		goto init_failed;
	}

	priv->clk = FUNC5(dev, "fck");
	if (FUNC2(priv->clk)) {
		FUNC8(dev, "failed to get functional clock\n");
		ret = -ENODEV;
		goto init_failed;
	}

	if (FUNC22(node, "max-bandwidth", &priv->max_bandwidth))
		priv->max_bandwidth = TILCDC_DEFAULT_MAX_BANDWIDTH;

	FUNC1("Maximum Bandwidth Value %d", priv->max_bandwidth);

	if (FUNC22(node, "max-width", &priv->max_width))
		priv->max_width = TILCDC_DEFAULT_MAX_WIDTH;

	FUNC1("Maximum Horizontal Pixel Width Value %dpixels", priv->max_width);

	if (FUNC22(node, "max-pixelclock",
					&priv->max_pixelclock))
		priv->max_pixelclock = TILCDC_DEFAULT_MAX_PIXELCLOCK;

	FUNC1("Maximum Pixel Clock Value %dKHz", priv->max_pixelclock);

	FUNC26(dev);

	/* Determine LCD IP Version */
	FUNC27(dev);
	switch (FUNC36(ddev, LCDC_PID_REG)) {
	case 0x4c100102:
		priv->rev = 1;
		break;
	case 0x4f200800:
	case 0x4f201000:
		priv->rev = 2;
		break;
	default:
		FUNC9(dev, "Unknown PID Reg value 0x%08x, "
			"defaulting to LCD revision 1\n",
			FUNC36(ddev, LCDC_PID_REG));
		priv->rev = 1;
		break;
	}

	FUNC28(dev);

	if (priv->rev == 1) {
		FUNC1("Revision 1 LCDC supports only RGB565 format");
		priv->pixelformats = tilcdc_rev1_formats;
		priv->num_pixelformats = FUNC0(tilcdc_rev1_formats);
		bpp = 16;
	} else {
		const char *str = "\0";

		FUNC21(node, "blue-and-red-wiring", &str);
		if (0 == FUNC30(str, "crossed")) {
			FUNC1("Configured for crossed blue and red wires");
			priv->pixelformats = tilcdc_crossed_formats;
			priv->num_pixelformats =
				FUNC0(tilcdc_crossed_formats);
			bpp = 32; /* Choose bpp with RGB support for fbdef */
		} else if (0 == FUNC30(str, "straight")) {
			FUNC1("Configured for straight blue and red wires");
			priv->pixelformats = tilcdc_straight_formats;
			priv->num_pixelformats =
				FUNC0(tilcdc_straight_formats);
			bpp = 16; /* Choose bpp with RGB support for fbdef */
		} else {
			FUNC1("Blue and red wiring '%s' unknown, use legacy mode",
			    str);
			priv->pixelformats = tilcdc_legacy_formats;
			priv->num_pixelformats =
				FUNC0(tilcdc_legacy_formats);
			bpp = 16; /* This is just a guess */
		}
	}

	ret = FUNC33(ddev);
	if (ret < 0) {
		FUNC8(dev, "failed to create crtc\n");
		goto init_failed;
	}
	FUNC20(ddev);

#ifdef CONFIG_CPU_FREQ
	priv->freq_transition.notifier_call = cpufreq_transition;
	ret = cpufreq_register_notifier(&priv->freq_transition,
			CPUFREQ_TRANSITION_NOTIFIER);
	if (ret) {
		dev_err(dev, "failed to register cpufreq notifier\n");
		priv->freq_transition.notifier_call = NULL;
		goto init_failed;
	}
#endif

	if (priv->is_componentized) {
		ret = FUNC6(dev, ddev);
		if (ret < 0)
			goto init_failed;

		ret = FUNC31(ddev);
		if (ret < 0)
			goto init_failed;
	} else {
		ret = FUNC32(ddev);
		if (ret)
			goto init_failed;
	}

	if (!priv->external_connector &&
	    ((priv->num_encoders == 0) || (priv->num_connectors == 0))) {
		FUNC8(dev, "no encoders/connectors found\n");
		ret = -EPROBE_DEFER;
		goto init_failed;
	}

	ret = FUNC18(ddev, 1);
	if (ret < 0) {
		FUNC8(dev, "failed to initialize vblank\n");
		goto init_failed;
	}

	ret = FUNC14(ddev, FUNC23(pdev, 0));
	if (ret < 0) {
		FUNC8(dev, "failed to install IRQ handler\n");
		goto init_failed;
	}

	FUNC17(ddev);

	FUNC15(ddev);

	ret = FUNC12(ddev, 0);
	if (ret)
		goto init_failed;

	FUNC13(ddev, bpp);

	priv->is_registered = true;
	return 0;

init_failed:
	FUNC34(ddev);

	return ret;
}