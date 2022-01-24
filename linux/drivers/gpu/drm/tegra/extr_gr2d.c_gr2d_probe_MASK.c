#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct host1x_syncpt {int dummy; } ;
struct TYPE_6__ {int num_syncpts; struct host1x_syncpt** syncpts; int /*<<< orphan*/  class; struct device* dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {TYPE_3__ base; int /*<<< orphan*/ * ops; int /*<<< orphan*/  version; int /*<<< orphan*/  list; } ;
struct gr2d {int /*<<< orphan*/  addr_regs; int /*<<< orphan*/  clk; TYPE_1__ client; TYPE_2__* soc; } ;
struct TYPE_5__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOST1X_CLASS_GR2D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gr2d_addr_regs ; 
 int /*<<< orphan*/  gr2d_client_ops ; 
 int /*<<< orphan*/  gr2d_ops ; 
 int FUNC9 (TYPE_3__*) ; 
 TYPE_2__* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct gr2d*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct host1x_syncpt **syncpts;
	struct gr2d *gr2d;
	unsigned int i;
	int err;

	gr2d = FUNC8(dev, sizeof(*gr2d), GFP_KERNEL);
	if (!gr2d)
		return -ENOMEM;

	gr2d->soc = FUNC10(dev);

	syncpts = FUNC8(dev, sizeof(*syncpts), GFP_KERNEL);
	if (!syncpts)
		return -ENOMEM;

	gr2d->clk = FUNC7(dev, NULL);
	if (FUNC2(gr2d->clk)) {
		FUNC6(dev, "cannot get clock\n");
		return FUNC3(gr2d->clk);
	}

	err = FUNC5(gr2d->clk);
	if (err) {
		FUNC6(dev, "cannot turn on clock\n");
		return err;
	}

	FUNC1(&gr2d->client.base.list);
	gr2d->client.base.ops = &gr2d_client_ops;
	gr2d->client.base.dev = dev;
	gr2d->client.base.class = HOST1X_CLASS_GR2D;
	gr2d->client.base.syncpts = syncpts;
	gr2d->client.base.num_syncpts = 1;

	FUNC1(&gr2d->client.list);
	gr2d->client.version = gr2d->soc->version;
	gr2d->client.ops = &gr2d_ops;

	err = FUNC9(&gr2d->client.base);
	if (err < 0) {
		FUNC6(dev, "failed to register host1x client: %d\n", err);
		FUNC4(gr2d->clk);
		return err;
	}

	/* initialize address register map */
	for (i = 0; i < FUNC0(gr2d_addr_regs); i++)
		FUNC12(gr2d_addr_regs[i], gr2d->addr_regs);

	FUNC11(pdev, gr2d);

	return 0;
}