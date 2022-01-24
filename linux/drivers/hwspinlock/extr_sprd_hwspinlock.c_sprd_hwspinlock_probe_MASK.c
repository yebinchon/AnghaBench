#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct hwspinlock* lock; } ;
struct sprd_hwspinlock_dev {scalar_t__ clk; TYPE_3__ bank; scalar_t__ base; } ;
struct resource {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hwspinlock {scalar_t__ priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HWSPINLOCK_RECCTRL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  HWSPINLOCK_USER_BITS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int SPRD_HWLOCKS_NUM ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,struct resource*) ; 
 struct sprd_hwspinlock_dev* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct sprd_hwspinlock_dev*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  sprd_hwspinlock_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct sprd_hwspinlock_dev *sprd_hwlock;
	struct hwspinlock *lock;
	struct resource *res;
	int i, ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	sprd_hwlock = FUNC8(&pdev->dev,
				   sizeof(struct sprd_hwspinlock_dev) +
				   SPRD_HWLOCKS_NUM * sizeof(*lock),
				   GFP_KERNEL);
	if (!sprd_hwlock)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	sprd_hwlock->base = FUNC7(&pdev->dev, res);
	if (FUNC1(sprd_hwlock->base))
		return FUNC2(sprd_hwlock->base);

	sprd_hwlock->clk = FUNC6(&pdev->dev, "enable");
	if (FUNC1(sprd_hwlock->clk)) {
		FUNC5(&pdev->dev, "get hwspinlock clock failed!\n");
		return FUNC2(sprd_hwlock->clk);
	}

	FUNC4(sprd_hwlock->clk);

	/* set the hwspinlock to record user id to identify subsystems */
	FUNC14(HWSPINLOCK_USER_BITS, sprd_hwlock->base + HWSPINLOCK_RECCTRL);

	for (i = 0; i < SPRD_HWLOCKS_NUM; i++) {
		lock = &sprd_hwlock->bank.lock[i];
		lock->priv = sprd_hwlock->base + FUNC0(i);
	}

	FUNC11(pdev, sprd_hwlock);
	FUNC13(&pdev->dev);

	ret = FUNC9(&sprd_hwlock->bank, &pdev->dev,
				   &sprd_hwspinlock_ops, 0, SPRD_HWLOCKS_NUM);
	if (ret) {
		FUNC12(&pdev->dev);
		FUNC3(sprd_hwlock->clk);
		return ret;
	}

	return 0;
}