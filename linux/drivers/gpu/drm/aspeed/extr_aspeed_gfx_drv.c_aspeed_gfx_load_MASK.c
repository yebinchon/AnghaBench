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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct drm_device {int /*<<< orphan*/ * dev; struct aspeed_gfx* dev_private; } ;
struct aspeed_gfx {scalar_t__ base; scalar_t__ clk; scalar_t__ rst; scalar_t__ scu; } ;

/* Variables and functions */
 scalar_t__ CRT_CTRL1 ; 
 scalar_t__ CRT_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  aspeed_gfx_irq_handler ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 struct aspeed_gfx* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct drm_device*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int FUNC16 (struct drm_device*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (char*) ; 
 struct platform_device* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC24(struct drm_device *drm)
{
	struct platform_device *pdev = FUNC22(drm->dev);
	struct aspeed_gfx *priv;
	struct resource *res;
	int ret;

	priv = FUNC10(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	drm->dev_private = priv;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	priv->base = FUNC9(drm->dev, res);
	if (FUNC1(priv->base))
		return FUNC2(priv->base);

	priv->scu = FUNC21("aspeed,ast2500-scu");
	if (FUNC1(priv->scu)) {
		FUNC7(&pdev->dev, "failed to find SCU regmap\n");
		return FUNC2(priv->scu);
	}

	ret = FUNC17(drm->dev);
	if (ret) {
		FUNC7(&pdev->dev,
			"failed to initialize reserved mem: %d\n", ret);
		return ret;
	}

	ret = FUNC13(drm->dev, FUNC0(32));
	if (ret) {
		FUNC7(&pdev->dev, "failed to set DMA mask: %d\n", ret);
		return ret;
	}

	priv->rst = FUNC12(&pdev->dev, NULL);
	if (FUNC1(priv->rst)) {
		FUNC7(&pdev->dev,
			"missing or invalid reset controller device tree entry");
		return FUNC2(priv->rst);
	}
	FUNC20(priv->rst);

	priv->clk = FUNC8(drm->dev, NULL);
	if (FUNC1(priv->clk)) {
		FUNC7(&pdev->dev,
			"missing or invalid clk device tree entry");
		return FUNC2(priv->clk);
	}
	FUNC6(priv->clk);

	/* Sanitize control registers */
	FUNC23(0, priv->base + CRT_CTRL1);
	FUNC23(0, priv->base + CRT_CTRL2);

	FUNC5(drm);

	ret = FUNC16(drm, 1);
	if (ret < 0) {
		FUNC7(drm->dev, "Failed to initialise vblank\n");
		return ret;
	}

	ret = FUNC3(drm);
	if (ret < 0) {
		FUNC7(drm->dev, "Failed to create outputs\n");
		return ret;
	}

	ret = FUNC4(drm);
	if (ret < 0) {
		FUNC7(drm->dev, "Cannot setup simple display pipe\n");
		return ret;
	}

	ret = FUNC11(drm->dev, FUNC18(pdev, 0),
			       aspeed_gfx_irq_handler, 0, "aspeed gfx", drm);
	if (ret < 0) {
		FUNC7(drm->dev, "Failed to install IRQ handler\n");
		return ret;
	}

	FUNC15(drm);

	FUNC14(drm, 32);

	return 0;
}