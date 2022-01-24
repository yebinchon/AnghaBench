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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct exynos_rng_dev {int type; int /*<<< orphan*/  mem; int /*<<< orphan*/  clk; int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; } ;
typedef  enum exynos_prng_type { ____Placeholder_exynos_prng_type } exynos_prng_type ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct exynos_rng_dev* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_rng_alg ; 
 struct exynos_rng_dev* exynos_rng_dev ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct exynos_rng_dev*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct exynos_rng_dev *rng;
	int ret;

	if (exynos_rng_dev)
		return -EEXIST;

	rng = FUNC5(&pdev->dev, sizeof(*rng), GFP_KERNEL);
	if (!rng)
		return -ENOMEM;

	rng->type = (enum exynos_prng_type)FUNC8(&pdev->dev);

	FUNC7(&rng->lock);

	rng->dev = &pdev->dev;
	rng->clk = FUNC4(&pdev->dev, "secss");
	if (FUNC0(rng->clk)) {
		FUNC3(&pdev->dev, "Couldn't get clock.\n");
		return FUNC1(rng->clk);
	}

	rng->mem = FUNC6(pdev, 0);
	if (FUNC0(rng->mem))
		return FUNC1(rng->mem);

	FUNC9(pdev, rng);

	exynos_rng_dev = rng;

	ret = FUNC2(&exynos_rng_alg);
	if (ret) {
		FUNC3(&pdev->dev,
			"Couldn't register rng crypto alg: %d\n", ret);
		exynos_rng_dev = NULL;
	}

	return ret;
}