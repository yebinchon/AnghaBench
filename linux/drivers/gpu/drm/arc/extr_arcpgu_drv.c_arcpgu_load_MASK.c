#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct drm_device {TYPE_1__* dev; struct arcpgu_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct arcpgu_drm_private {int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCPGU_REG_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct arcpgu_drm_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,struct device_node*) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct resource*) ; 
 struct arcpgu_drm_private* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*) ; 
 struct device_node* FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_1__*) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct drm_device*) ; 
 struct platform_device* FUNC20 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct drm_device *drm)
{
	struct platform_device *pdev = FUNC20(drm->dev);
	struct arcpgu_drm_private *arcpgu;
	struct device_node *encoder_node;
	struct resource *res;
	int ret;

	arcpgu = FUNC11(&pdev->dev, sizeof(*arcpgu), GFP_KERNEL);
	if (arcpgu == NULL)
		return -ENOMEM;

	drm->dev_private = arcpgu;

	arcpgu->clk = FUNC9(drm->dev, "pxlclk");
	if (FUNC1(arcpgu->clk))
		return FUNC2(arcpgu->clk);

	FUNC7(drm);

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	arcpgu->regs = FUNC10(&pdev->dev, res);
	if (FUNC1(arcpgu->regs))
		return FUNC2(arcpgu->regs);

	FUNC8(drm->dev, "arc_pgu ID: 0x%x\n",
		 FUNC3(arcpgu, ARCPGU_REG_ID));

	/* Get the optional framebuffer memory resource */
	ret = FUNC17(drm->dev);
	if (ret && ret != -ENODEV)
		return ret;

	if (FUNC12(drm->dev, FUNC0(32)))
		return -ENODEV;

	if (FUNC4(drm) < 0)
		return -ENODEV;

	/* find the encoder node and initialize it */
	encoder_node = FUNC16(drm->dev->of_node, "encoder-slave", 0);
	if (encoder_node) {
		ret = FUNC5(drm, encoder_node);
		FUNC15(encoder_node);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC6(drm, NULL);
		if (ret < 0)
			return ret;
	}

	FUNC14(drm);
	FUNC13(drm);

	FUNC19(pdev, drm);
	return 0;
}