#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct tegra_windowgroup {unsigned int index; struct clk* rst; scalar_t__ usecount; int /*<<< orphan*/  lock; } ;
struct TYPE_13__ {TYPE_1__* dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  list; } ;
struct tegra_display_hub {unsigned int num_heads; TYPE_4__ client; struct clk* rst; struct clk** clk_heads; struct tegra_windowgroup* wgrps; TYPE_2__* soc; struct clk* clk_hub; struct clk* clk_dsc; struct clk* clk_disp; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  clk ;
struct TYPE_12__ {unsigned int num_wgrps; scalar_t__ supports_dsc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 void* FUNC4 (TYPE_1__*,char*) ; 
 struct clk* FUNC5 (TYPE_1__*,struct device_node*,char*) ; 
 void* FUNC6 (TYPE_1__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct tegra_display_hub* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_1__*,char*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (TYPE_1__*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC13 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct tegra_display_hub*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (struct clk*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  tegra_display_hub_ops ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device_node *child = NULL;
	struct tegra_display_hub *hub;
	struct clk *clk;
	unsigned int i;
	int err;

	hub = FUNC7(&pdev->dev, sizeof(*hub), GFP_KERNEL);
	if (!hub)
		return -ENOMEM;

	hub->soc = FUNC11(&pdev->dev);

	hub->clk_disp = FUNC4(&pdev->dev, "disp");
	if (FUNC1(hub->clk_disp)) {
		err = FUNC2(hub->clk_disp);
		return err;
	}

	if (hub->soc->supports_dsc) {
		hub->clk_dsc = FUNC4(&pdev->dev, "dsc");
		if (FUNC1(hub->clk_dsc)) {
			err = FUNC2(hub->clk_dsc);
			return err;
		}
	}

	hub->clk_hub = FUNC4(&pdev->dev, "hub");
	if (FUNC1(hub->clk_hub)) {
		err = FUNC2(hub->clk_hub);
		return err;
	}

	hub->rst = FUNC8(&pdev->dev, "misc");
	if (FUNC1(hub->rst)) {
		err = FUNC2(hub->rst);
		return err;
	}

	hub->wgrps = FUNC6(&pdev->dev, hub->soc->num_wgrps,
				  sizeof(*hub->wgrps), GFP_KERNEL);
	if (!hub->wgrps)
		return -ENOMEM;

	for (i = 0; i < hub->soc->num_wgrps; i++) {
		struct tegra_windowgroup *wgrp = &hub->wgrps[i];
		char id[8];

		FUNC18(id, sizeof(id), "wgrp%u", i);
		FUNC10(&wgrp->lock);
		wgrp->usecount = 0;
		wgrp->index = i;

		wgrp->rst = FUNC8(&pdev->dev, id);
		if (FUNC1(wgrp->rst))
			return FUNC2(wgrp->rst);

		err = FUNC17(wgrp->rst);
		if (err < 0)
			return err;
	}

	hub->num_heads = FUNC12(pdev->dev.of_node);

	hub->clk_heads = FUNC6(&pdev->dev, hub->num_heads, sizeof(clk),
				      GFP_KERNEL);
	if (!hub->clk_heads)
		return -ENOMEM;

	for (i = 0; i < hub->num_heads; i++) {
		child = FUNC13(pdev->dev.of_node, child);
		if (!child) {
			FUNC3(&pdev->dev, "failed to find node for head %u\n",
				i);
			return -ENODEV;
		}

		clk = FUNC5(&pdev->dev, child, "dc");
		if (FUNC1(clk)) {
			FUNC3(&pdev->dev, "failed to get clock for head %u\n",
				i);
			FUNC14(child);
			return FUNC2(clk);
		}

		hub->clk_heads[i] = clk;
	}

	FUNC14(child);

	/* XXX: enable clock across reset? */
	err = FUNC17(hub->rst);
	if (err < 0)
		return err;

	FUNC15(pdev, hub);
	FUNC16(&pdev->dev);

	FUNC0(&hub->client.list);
	hub->client.ops = &tegra_display_hub_ops;
	hub->client.dev = &pdev->dev;

	err = FUNC9(&hub->client);
	if (err < 0)
		FUNC3(&pdev->dev, "failed to register host1x client: %d\n",
			err);

	return err;
}