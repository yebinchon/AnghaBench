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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct exynos_mic {TYPE_1__ bridge; int /*<<< orphan*/ * clks; int /*<<< orphan*/  sysreg; int /*<<< orphan*/  reg; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int NUM_CLKS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * clk_names ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct exynos_mic* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  exynos_mic_component_ops ; 
 int /*<<< orphan*/  mic_bridge_funcs ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct exynos_mic*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct exynos_mic *mic;
	struct resource res;
	int ret, i;

	mic = FUNC7(dev, sizeof(*mic), GFP_KERNEL);
	if (!mic) {
		FUNC1(dev,
			      "mic: Failed to allocate memory for MIC object\n");
		ret = -ENOMEM;
		goto err;
	}

	mic->dev = dev;

	ret = FUNC9(dev->of_node, 0, &res);
	if (ret) {
		FUNC1(dev, "mic: Failed to get mem region for MIC\n");
		goto err;
	}
	mic->reg = FUNC6(dev, res.start, FUNC13(&res));
	if (!mic->reg) {
		FUNC1(dev, "mic: Failed to remap for MIC\n");
		ret = -ENOMEM;
		goto err;
	}

	mic->sysreg = FUNC14(dev->of_node,
							"samsung,disp-syscon");
	if (FUNC2(mic->sysreg)) {
		FUNC1(dev, "mic: Failed to get system register.\n");
		ret = FUNC3(mic->sysreg);
		goto err;
	}

	for (i = 0; i < NUM_CLKS; i++) {
		mic->clks[i] = FUNC5(dev, clk_names[i]);
		if (FUNC2(mic->clks[i])) {
			FUNC1(dev, "mic: Failed to get clock (%s)\n",
				      clk_names[i]);
			ret = FUNC3(mic->clks[i]);
			goto err;
		}
	}

	FUNC10(pdev, mic);

	mic->bridge.funcs = &mic_bridge_funcs;
	mic->bridge.of_node = dev->of_node;

	FUNC8(&mic->bridge);

	FUNC12(dev);

	ret = FUNC4(dev, &exynos_mic_component_ops);
	if (ret)
		goto err_pm;

	FUNC0(dev, "MIC has been probed\n");

	return 0;

err_pm:
	FUNC11(dev);
err:
	return ret;
}