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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct decon_context {unsigned long out_type; int first_win; int irq_vsync; int irq_lcd_sys; int te_irq; struct clk* sysreg; struct clk* addr; struct clk** clks; struct device* dev; int /*<<< orphan*/  vblank_lock; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I80_HW_TRG ; 
 int IFTYPE_HDMI ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * decon_clks_name ; 
 int /*<<< orphan*/  decon_component_ops ; 
 int FUNC4 (struct decon_context*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decon_irq_handler ; 
 int /*<<< orphan*/  decon_te_irq_handler ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct clk* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct clk* FUNC7 (struct device*,struct resource*) ; 
 struct decon_context* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct device*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct decon_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct clk* FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct decon_context *ctx;
	struct resource *res;
	int ret;
	int i;

	ctx = FUNC8(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;
	ctx->out_type = (unsigned long)FUNC9(dev);
	FUNC14(&ctx->vblank_lock);

	if (ctx->out_type & IFTYPE_HDMI)
		ctx->first_win = 1;

	for (i = 0; i < FUNC0(decon_clks_name); i++) {
		struct clk *clk;

		clk = FUNC6(ctx->dev, decon_clks_name[i]);
		if (FUNC1(clk))
			return FUNC2(clk);

		ctx->clks[i] = clk;
	}

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	ctx->addr = FUNC7(dev, res);
	if (FUNC1(ctx->addr)) {
		FUNC5(dev, "ioremap failed\n");
		return FUNC2(ctx->addr);
	}

	ret = FUNC4(ctx, "vsync", decon_irq_handler, 0);
	if (ret < 0)
		return ret;
	ctx->irq_vsync = ret;

	ret = FUNC4(ctx, "lcd_sys", decon_irq_handler, 0);
	if (ret < 0)
		return ret;
	ctx->irq_lcd_sys = ret;

	ret = FUNC4(ctx, "te", decon_te_irq_handler,
			IRQF_TRIGGER_RISING);
	if (ret < 0)
			return ret;
	if (ret) {
		ctx->te_irq = ret;
		ctx->out_type &= ~I80_HW_TRG;
	}

	if (ctx->out_type & I80_HW_TRG) {
		ctx->sysreg = FUNC15(dev->of_node,
							"samsung,disp-sysreg");
		if (FUNC1(ctx->sysreg)) {
			FUNC5(dev, "failed to get system register\n");
			return FUNC2(ctx->sysreg);
		}
	}

	FUNC11(pdev, ctx);

	FUNC13(dev);

	ret = FUNC3(dev, &decon_component_ops);
	if (ret)
		goto err_disable_pm_runtime;

	return 0;

err_disable_pm_runtime:
	FUNC12(dev);

	return ret;
}