#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  regs; struct device* dev; } ;
struct TYPE_9__ {int num_syncpts; struct host1x_syncpt** syncpts; int /*<<< orphan*/  class; struct device* dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  list; } ;
struct TYPE_7__ {TYPE_3__ base; int /*<<< orphan*/ * ops; int /*<<< orphan*/  version; int /*<<< orphan*/  list; } ;
struct vic {TYPE_5__ falcon; TYPE_1__ client; TYPE_2__* config; struct device* dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  rst; int /*<<< orphan*/  clk; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  pm_domain; } ;
struct platform_device {struct device dev; } ;
struct host1x_syncpt {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOST1X_CLASS_VIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_2__* FUNC12 (struct device*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct vic*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  vic_client_ops ; 
 int /*<<< orphan*/  vic_falcon_ops ; 
 int /*<<< orphan*/  vic_ops ; 
 int FUNC17 (struct device*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct host1x_syncpt **syncpts;
	struct resource *regs;
	struct vic *vic;
	int err;

	vic = FUNC6(dev, sizeof(*vic), GFP_KERNEL);
	if (!vic)
		return -ENOMEM;

	vic->config = FUNC12(dev);

	syncpts = FUNC6(dev, sizeof(*syncpts), GFP_KERNEL);
	if (!syncpts)
		return -ENOMEM;

	regs = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!regs) {
		FUNC3(&pdev->dev, "failed to get registers\n");
		return -ENXIO;
	}

	vic->regs = FUNC5(dev, regs);
	if (FUNC1(vic->regs))
		return FUNC2(vic->regs);

	vic->clk = FUNC4(dev, NULL);
	if (FUNC1(vic->clk)) {
		FUNC3(&pdev->dev, "failed to get clock\n");
		return FUNC2(vic->clk);
	}

	if (!dev->pm_domain) {
		vic->rst = FUNC7(dev, "vic");
		if (FUNC1(vic->rst)) {
			FUNC3(&pdev->dev, "failed to get reset\n");
			return FUNC2(vic->rst);
		}
	}

	vic->falcon.dev = dev;
	vic->falcon.regs = vic->regs;
	vic->falcon.ops = &vic_falcon_ops;

	err = FUNC9(&vic->falcon);
	if (err < 0)
		return err;

	FUNC14(pdev, vic);

	FUNC0(&vic->client.base.list);
	vic->client.base.ops = &vic_client_ops;
	vic->client.base.dev = dev;
	vic->client.base.class = HOST1X_CLASS_VIC;
	vic->client.base.syncpts = syncpts;
	vic->client.base.num_syncpts = 1;
	vic->dev = dev;

	FUNC0(&vic->client.list);
	vic->client.version = vic->config->version;
	vic->client.ops = &vic_ops;

	err = FUNC10(&vic->client.base);
	if (err < 0) {
		FUNC3(dev, "failed to register host1x client: %d\n", err);
		goto exit_falcon;
	}

	FUNC15(&pdev->dev);
	if (!FUNC16(&pdev->dev)) {
		err = FUNC17(&pdev->dev);
		if (err < 0)
			goto unregister_client;
	}

	return 0;

unregister_client:
	FUNC11(&vic->client.base);
exit_falcon:
	FUNC8(&vic->falcon);

	return err;
}