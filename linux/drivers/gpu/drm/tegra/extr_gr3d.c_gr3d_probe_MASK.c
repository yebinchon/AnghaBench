#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct host1x_syncpt {int dummy; } ;
struct TYPE_12__ {int num_syncpts; struct host1x_syncpt** syncpts; int /*<<< orphan*/  class; TYPE_3__* dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  list; } ;
struct TYPE_9__ {TYPE_4__ base; int /*<<< orphan*/ * ops; int /*<<< orphan*/  version; int /*<<< orphan*/  list; } ;
struct gr3d {int /*<<< orphan*/  addr_regs; TYPE_1__ client; TYPE_2__* soc; void* rst_secondary; void* clk_secondary; void* rst; void* clk; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOST1X_CLASS_GR3D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_3D ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_3D1 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 void* FUNC5 (TYPE_3__*,char*) ; 
 void* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * gr3d_addr_regs ; 
 int /*<<< orphan*/  gr3d_client_ops ; 
 int /*<<< orphan*/  gr3d_ops ; 
 int FUNC8 (TYPE_4__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct gr3d*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,void*,void*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct host1x_syncpt **syncpts;
	struct gr3d *gr3d;
	unsigned int i;
	int err;

	gr3d = FUNC6(&pdev->dev, sizeof(*gr3d), GFP_KERNEL);
	if (!gr3d)
		return -ENOMEM;

	gr3d->soc = FUNC9(&pdev->dev);

	syncpts = FUNC6(&pdev->dev, sizeof(*syncpts), GFP_KERNEL);
	if (!syncpts)
		return -ENOMEM;

	gr3d->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC2(gr3d->clk)) {
		FUNC4(&pdev->dev, "cannot get clock\n");
		return FUNC3(gr3d->clk);
	}

	gr3d->rst = FUNC7(&pdev->dev, "3d");
	if (FUNC2(gr3d->rst)) {
		FUNC4(&pdev->dev, "cannot get reset\n");
		return FUNC3(gr3d->rst);
	}

	if (FUNC10(np, "nvidia,tegra30-gr3d")) {
		gr3d->clk_secondary = FUNC5(&pdev->dev, "3d2");
		if (FUNC2(gr3d->clk_secondary)) {
			FUNC4(&pdev->dev, "cannot get secondary clock\n");
			return FUNC3(gr3d->clk_secondary);
		}

		gr3d->rst_secondary = FUNC7(&pdev->dev,
								"3d2");
		if (FUNC2(gr3d->rst_secondary)) {
			FUNC4(&pdev->dev, "cannot get secondary reset\n");
			return FUNC3(gr3d->rst_secondary);
		}
	}

	err = FUNC13(TEGRA_POWERGATE_3D, gr3d->clk,
						gr3d->rst);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to power up 3D unit\n");
		return err;
	}

	if (gr3d->clk_secondary) {
		err = FUNC13(TEGRA_POWERGATE_3D1,
							gr3d->clk_secondary,
							gr3d->rst_secondary);
		if (err < 0) {
			FUNC4(&pdev->dev,
				"failed to power up secondary 3D unit\n");
			return err;
		}
	}

	FUNC1(&gr3d->client.base.list);
	gr3d->client.base.ops = &gr3d_client_ops;
	gr3d->client.base.dev = &pdev->dev;
	gr3d->client.base.class = HOST1X_CLASS_GR3D;
	gr3d->client.base.syncpts = syncpts;
	gr3d->client.base.num_syncpts = 1;

	FUNC1(&gr3d->client.list);
	gr3d->client.version = gr3d->soc->version;
	gr3d->client.ops = &gr3d_ops;

	err = FUNC8(&gr3d->client.base);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to register host1x client: %d\n",
			err);
		return err;
	}

	/* initialize address register map */
	for (i = 0; i < FUNC0(gr3d_addr_regs); i++)
		FUNC12(gr3d_addr_regs[i], gr3d->addr_regs);

	FUNC11(pdev, gr3d);

	return 0;
}