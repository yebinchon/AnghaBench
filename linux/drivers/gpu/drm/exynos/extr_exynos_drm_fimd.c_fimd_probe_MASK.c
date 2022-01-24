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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct fimd_context {int suspended; int i80_if; int /*<<< orphan*/ * encoder; int /*<<< orphan*/  wait_vsync_event; int /*<<< orphan*/  wait_vsync_queue; int /*<<< orphan*/ * regs; int /*<<< orphan*/ * lcd_clk; int /*<<< orphan*/ * bus_clk; int /*<<< orphan*/ * sysreg; int /*<<< orphan*/  i80ifcon; int /*<<< orphan*/  vidcon0; int /*<<< orphan*/  vidout_con; TYPE_1__* driver_data; int /*<<< orphan*/  vidcon1; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_vidoutcon; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIDCON0_DSI_EN ; 
 int /*<<< orphan*/  VIDCON0_VIDOUT_I80_LDI0 ; 
 int /*<<< orphan*/  VIDCON1_INV_VCLK ; 
 int /*<<< orphan*/  VIDCON1_INV_VDEN ; 
 int /*<<< orphan*/  VIDOUT_CON_F_I80_LDI0 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 void* FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (struct device*,struct resource*) ; 
 struct fimd_context* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct fimd_context*) ; 
 int /*<<< orphan*/ * FUNC14 (struct device*) ; 
 int /*<<< orphan*/  fimd_component_ops ; 
 int /*<<< orphan*/  fimd_irq_handler ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (struct device*) ; 
 struct device_node* FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC20 (struct device_node*,char*,int*) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct fimd_context*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct fimd_context *ctx;
	struct device_node *i80_if_timings;
	struct resource *res;
	int ret;

	if (!dev->of_node)
		return -ENODEV;

	ctx = FUNC12(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;
	ctx->suspended = true;
	ctx->driver_data = FUNC16(dev);

	if (FUNC19(dev->of_node, "samsung,invert-vden"))
		ctx->vidcon1 |= VIDCON1_INV_VDEN;
	if (FUNC19(dev->of_node, "samsung,invert-vclk"))
		ctx->vidcon1 |= VIDCON1_INV_VCLK;

	i80_if_timings = FUNC17(dev->of_node, "i80-if-timings");
	if (i80_if_timings) {
		u32 val;

		ctx->i80_if = true;

		if (ctx->driver_data->has_vidoutcon)
			ctx->vidout_con |= VIDOUT_CON_F_I80_LDI0;
		else
			ctx->vidcon0 |= VIDCON0_VIDOUT_I80_LDI0;
		/*
		 * The user manual describes that this "DSI_EN" bit is required
		 * to enable I80 24-bit data interface.
		 */
		ctx->vidcon0 |= VIDCON0_DSI_EN;

		if (FUNC20(i80_if_timings, "cs-setup", &val))
			val = 0;
		ctx->i80ifcon = FUNC1(val);
		if (FUNC20(i80_if_timings, "wr-setup", &val))
			val = 0;
		ctx->i80ifcon |= FUNC4(val);
		if (FUNC20(i80_if_timings, "wr-active", &val))
			val = 1;
		ctx->i80ifcon |= FUNC2(val);
		if (FUNC20(i80_if_timings, "wr-hold", &val))
			val = 0;
		ctx->i80ifcon |= FUNC3(val);
	}
	FUNC18(i80_if_timings);

	ctx->sysreg = FUNC26(dev->of_node,
							"samsung,sysreg");
	if (FUNC0(ctx->sysreg)) {
		FUNC9(dev, "failed to get system register.\n");
		ctx->sysreg = NULL;
	}

	ctx->bus_clk = FUNC10(dev, "fimd");
	if (FUNC0(ctx->bus_clk)) {
		FUNC8(dev, "failed to get bus clock\n");
		return FUNC5(ctx->bus_clk);
	}

	ctx->lcd_clk = FUNC10(dev, "sclk_fimd");
	if (FUNC0(ctx->lcd_clk)) {
		FUNC8(dev, "failed to get lcd clock\n");
		return FUNC5(ctx->lcd_clk);
	}

	res = FUNC21(pdev, IORESOURCE_MEM, 0);

	ctx->regs = FUNC11(dev, res);
	if (FUNC0(ctx->regs))
		return FUNC5(ctx->regs);

	res = FUNC22(pdev, IORESOURCE_IRQ,
					   ctx->i80_if ? "lcd_sys" : "vsync");
	if (!res) {
		FUNC8(dev, "irq request failed.\n");
		return -ENXIO;
	}

	ret = FUNC13(dev, res->start, fimd_irq_handler,
							0, "drm_fimd", ctx);
	if (ret) {
		FUNC8(dev, "irq request failed.\n");
		return ret;
	}

	FUNC15(&ctx->wait_vsync_queue);
	FUNC6(&ctx->wait_vsync_event, 0);

	FUNC23(pdev, ctx);

	ctx->encoder = FUNC14(dev);
	if (FUNC0(ctx->encoder))
		return FUNC5(ctx->encoder);

	FUNC25(dev);

	ret = FUNC7(dev, &fimd_component_ops);
	if (ret)
		goto err_disable_pm_runtime;

	return ret;

err_disable_pm_runtime:
	FUNC24(dev);

	return ret;
}