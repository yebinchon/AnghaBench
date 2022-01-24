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
struct qcom_rng {unsigned long skip_init; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct qcom_rng* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct qcom_rng*) ; 
 int /*<<< orphan*/  qcom_rng_alg ; 
 struct qcom_rng* qcom_rng_dev ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct qcom_rng *rng;
	int ret;

	rng = FUNC6(&pdev->dev, sizeof(*rng), GFP_KERNEL);
	if (!rng)
		return -ENOMEM;

	FUNC10(pdev, rng);
	FUNC9(&rng->lock);

	rng->base = FUNC7(pdev, 0);
	if (FUNC0(rng->base))
		return FUNC1(rng->base);

	/* ACPI systems have clk already on, so skip clk_get */
	if (!FUNC8(&pdev->dev)) {
		rng->clk = FUNC5(&pdev->dev, "core");
		if (FUNC0(rng->clk))
			return FUNC1(rng->clk);
	}


	rng->skip_init = (unsigned long)FUNC4(&pdev->dev);

	qcom_rng_dev = rng;
	ret = FUNC2(&qcom_rng_alg);
	if (ret) {
		FUNC3(&pdev->dev, "Register crypto rng failed: %d\n", ret);
		qcom_rng_dev = NULL;
	}

	return ret;
}