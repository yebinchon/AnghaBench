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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct etnaviv_gpu {scalar_t__ irq; struct device* dev; int /*<<< orphan*/ * clk_shader; void* base_rate_shader; int /*<<< orphan*/ * clk_core; void* base_rate_core; int /*<<< orphan*/ * clk_bus; int /*<<< orphan*/ * clk_reg; int /*<<< orphan*/ * mmio; int /*<<< orphan*/  fence_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct etnaviv_gpu*) ; 
 void* FUNC8 (struct device*,char*) ; 
 struct etnaviv_gpu* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  gpu_ops ; 
 int /*<<< orphan*/  irq_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct etnaviv_gpu *gpu;
	int err;

	gpu = FUNC9(dev, sizeof(*gpu), GFP_KERNEL);
	if (!gpu)
		return -ENOMEM;

	gpu->dev = &pdev->dev;
	FUNC12(&gpu->lock);
	FUNC12(&gpu->fence_lock);

	/* Map registers: */
	gpu->mmio = FUNC10(pdev, 0);
	if (FUNC1(gpu->mmio))
		return FUNC2(gpu->mmio);

	/* Get Interrupt: */
	gpu->irq = FUNC13(pdev, 0);
	if (gpu->irq < 0) {
		FUNC5(dev, "failed to get irq: %d\n", gpu->irq);
		return gpu->irq;
	}

	err = FUNC11(&pdev->dev, gpu->irq, irq_handler, 0,
			       FUNC6(gpu->dev), gpu);
	if (err) {
		FUNC5(dev, "failed to request IRQ%u: %d\n", gpu->irq, err);
		return err;
	}

	/* Get Clocks: */
	gpu->clk_reg = FUNC8(&pdev->dev, "reg");
	FUNC0("clk_reg: %p", gpu->clk_reg);
	if (FUNC1(gpu->clk_reg))
		gpu->clk_reg = NULL;

	gpu->clk_bus = FUNC8(&pdev->dev, "bus");
	FUNC0("clk_bus: %p", gpu->clk_bus);
	if (FUNC1(gpu->clk_bus))
		gpu->clk_bus = NULL;

	gpu->clk_core = FUNC8(&pdev->dev, "core");
	FUNC0("clk_core: %p", gpu->clk_core);
	if (FUNC1(gpu->clk_core))
		gpu->clk_core = NULL;
	gpu->base_rate_core = FUNC3(gpu->clk_core);

	gpu->clk_shader = FUNC8(&pdev->dev, "shader");
	FUNC0("clk_shader: %p", gpu->clk_shader);
	if (FUNC1(gpu->clk_shader))
		gpu->clk_shader = NULL;
	gpu->base_rate_shader = FUNC3(gpu->clk_shader);

	/* TODO: figure out max mapped size */
	FUNC7(dev, gpu);

	/*
	 * We treat the device as initially suspended.  The runtime PM
	 * autosuspend delay is rather arbitary: no measurements have
	 * yet been performed to determine an appropriate value.
	 */
	FUNC16(gpu->dev);
	FUNC15(gpu->dev, 200);
	FUNC14(gpu->dev);

	err = FUNC4(&pdev->dev, &gpu_ops);
	if (err < 0) {
		FUNC5(&pdev->dev, "failed to register component: %d\n", err);
		return err;
	}

	return 0;
}