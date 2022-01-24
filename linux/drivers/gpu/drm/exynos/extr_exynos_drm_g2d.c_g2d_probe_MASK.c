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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct g2d_runqueue_node {int dummy; } ;
struct g2d_data {int irq; int /*<<< orphan*/  runqueue_slab; int /*<<< orphan*/  g2d_workq; int /*<<< orphan*/  max_pool; int /*<<< orphan*/  regs; int /*<<< orphan*/  flags; int /*<<< orphan*/  gate_clk; int /*<<< orphan*/  runqueue_mutex; int /*<<< orphan*/  cmdlist_mutex; int /*<<< orphan*/  runqueue; int /*<<< orphan*/  free_cmdlist; int /*<<< orphan*/  runqueue_work; struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  G2D_BIT_ENGINE_BUSY ; 
 int /*<<< orphan*/  G2D_BIT_SUSPEND_RUNQUEUE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_POOL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct resource*) ; 
 struct g2d_data* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct g2d_data*) ; 
 int /*<<< orphan*/  g2d_component_ops ; 
 int /*<<< orphan*/  g2d_irq_handler ; 
 int /*<<< orphan*/  g2d_runqueue_worker ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct g2d_data*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct g2d_data *g2d;
	int ret;

	g2d = FUNC11(dev, sizeof(*g2d), GFP_KERNEL);
	if (!g2d)
		return -ENOMEM;

	g2d->runqueue_slab = FUNC13("g2d_runqueue_slab",
			sizeof(struct g2d_runqueue_node), 0, 0, NULL);
	if (!g2d->runqueue_slab)
		return -ENOMEM;

	g2d->dev = dev;

	g2d->g2d_workq = FUNC6("g2d");
	if (!g2d->g2d_workq) {
		FUNC8(dev, "failed to create workqueue\n");
		ret = -EINVAL;
		goto err_destroy_slab;
	}

	FUNC1(&g2d->runqueue_work, g2d_runqueue_worker);
	FUNC0(&g2d->free_cmdlist);
	FUNC0(&g2d->runqueue);

	FUNC15(&g2d->cmdlist_mutex);
	FUNC15(&g2d->runqueue_mutex);

	g2d->gate_clk = FUNC9(dev, "fimg2d");
	if (FUNC2(g2d->gate_clk)) {
		FUNC8(dev, "failed to get gate clock\n");
		ret = FUNC3(g2d->gate_clk);
		goto err_destroy_workqueue;
	}

	FUNC22(dev);
	FUNC21(dev, 2000);
	FUNC20(dev);
	FUNC4(G2D_BIT_SUSPEND_RUNQUEUE, &g2d->flags);
	FUNC4(G2D_BIT_ENGINE_BUSY, &g2d->flags);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);

	g2d->regs = FUNC10(dev, res);
	if (FUNC2(g2d->regs)) {
		ret = FUNC3(g2d->regs);
		goto err_put_clk;
	}

	g2d->irq = FUNC16(pdev, 0);
	if (g2d->irq < 0) {
		FUNC8(dev, "failed to get irq\n");
		ret = g2d->irq;
		goto err_put_clk;
	}

	ret = FUNC12(dev, g2d->irq, g2d_irq_handler, 0,
								"drm_g2d", g2d);
	if (ret < 0) {
		FUNC8(dev, "irq request failed\n");
		goto err_put_clk;
	}

	g2d->max_pool = MAX_POOL;

	FUNC18(pdev, g2d);

	ret = FUNC5(dev, &g2d_component_ops);
	if (ret < 0) {
		FUNC8(dev, "failed to register drm g2d device\n");
		goto err_put_clk;
	}

	return 0;

err_put_clk:
	FUNC19(dev);
err_destroy_workqueue:
	FUNC7(g2d->g2d_workq);
err_destroy_slab:
	FUNC14(g2d->runqueue_slab);
	return ret;
}