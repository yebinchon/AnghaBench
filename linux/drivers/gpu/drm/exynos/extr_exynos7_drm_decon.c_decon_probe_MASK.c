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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct decon_context {int suspended; int i80_if; int /*<<< orphan*/  regs; void* encoder; int /*<<< orphan*/  wait_vsync_event; int /*<<< orphan*/  wait_vsync_queue; void* vclk; void* eclk; void* aclk; void* pclk; struct device* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  decon_component_ops ; 
 int /*<<< orphan*/  decon_irq_handler ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 struct decon_context* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct decon_context*) ; 
 void* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct decon_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct decon_context *ctx;
	struct device_node *i80_if_timings;
	struct resource *res;
	int ret;

	if (!dev->of_node)
		return -ENODEV;

	ctx = FUNC6(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;
	ctx->suspended = true;

	i80_if_timings = FUNC11(dev->of_node, "i80-if-timings");
	if (i80_if_timings)
		ctx->i80_if = true;
	FUNC13(i80_if_timings);

	ctx->regs = FUNC12(dev->of_node, 0);
	if (!ctx->regs)
		return -ENOMEM;

	ctx->pclk = FUNC5(dev, "pclk_decon0");
	if (FUNC0(ctx->pclk)) {
		FUNC4(dev, "failed to get bus clock pclk\n");
		ret = FUNC1(ctx->pclk);
		goto err_iounmap;
	}

	ctx->aclk = FUNC5(dev, "aclk_decon0");
	if (FUNC0(ctx->aclk)) {
		FUNC4(dev, "failed to get bus clock aclk\n");
		ret = FUNC1(ctx->aclk);
		goto err_iounmap;
	}

	ctx->eclk = FUNC5(dev, "decon0_eclk");
	if (FUNC0(ctx->eclk)) {
		FUNC4(dev, "failed to get eclock\n");
		ret = FUNC1(ctx->eclk);
		goto err_iounmap;
	}

	ctx->vclk = FUNC5(dev, "decon0_vclk");
	if (FUNC0(ctx->vclk)) {
		FUNC4(dev, "failed to get vclock\n");
		ret = FUNC1(ctx->vclk);
		goto err_iounmap;
	}

	res = FUNC14(pdev, IORESOURCE_IRQ,
					   ctx->i80_if ? "lcd_sys" : "vsync");
	if (!res) {
		FUNC4(dev, "irq request failed.\n");
		ret = -ENXIO;
		goto err_iounmap;
	}

	ret = FUNC7(dev, res->start, decon_irq_handler,
							0, "drm_decon", ctx);
	if (ret) {
		FUNC4(dev, "irq request failed.\n");
		goto err_iounmap;
	}

	FUNC9(&ctx->wait_vsync_queue);
	FUNC2(&ctx->wait_vsync_event, 0);

	FUNC15(pdev, ctx);

	ctx->encoder = FUNC8(dev);
	if (FUNC0(ctx->encoder)) {
		ret = FUNC1(ctx->encoder);
		goto err_iounmap;
	}

	FUNC17(dev);

	ret = FUNC3(dev, &decon_component_ops);
	if (ret)
		goto err_disable_pm_runtime;

	return ret;

err_disable_pm_runtime:
	FUNC16(dev);

err_iounmap:
	FUNC10(ctx->regs);

	return ret;
}