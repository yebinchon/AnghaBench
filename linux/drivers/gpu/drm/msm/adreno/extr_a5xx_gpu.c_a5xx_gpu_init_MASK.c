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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_gpu {TYPE_1__* aspace; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {struct msm_gpu base; int /*<<< orphan*/  reg_offsets; int /*<<< orphan*/  registers; } ;
struct a5xx_gpu {int lm_leakage; struct adreno_gpu base; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct msm_gpu* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  a5xx_fault_handler ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  a5xx_register_offsets ; 
 int /*<<< orphan*/  a5xx_registers ; 
 int FUNC4 (struct drm_device*,struct platform_device*,struct adreno_gpu*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  funcs ; 
 struct a5xx_gpu* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct msm_gpu*,int /*<<< orphan*/ ) ; 

struct msm_gpu *FUNC8(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct platform_device *pdev = priv->gpu_pdev;
	struct a5xx_gpu *a5xx_gpu = NULL;
	struct adreno_gpu *adreno_gpu;
	struct msm_gpu *gpu;
	int ret;

	if (!pdev) {
		FUNC0(dev->dev, "No A5XX device is defined\n");
		return FUNC1(-ENXIO);
	}

	a5xx_gpu = FUNC6(sizeof(*a5xx_gpu), GFP_KERNEL);
	if (!a5xx_gpu)
		return FUNC1(-ENOMEM);

	adreno_gpu = &a5xx_gpu->base;
	gpu = &adreno_gpu->base;

	adreno_gpu->registers = a5xx_registers;
	adreno_gpu->reg_offsets = a5xx_register_offsets;

	a5xx_gpu->lm_leakage = 0x4E001A;

	FUNC5(&pdev->dev);

	ret = FUNC4(dev, pdev, adreno_gpu, &funcs, 4);
	if (ret) {
		FUNC2(&(a5xx_gpu->base.base));
		return FUNC1(ret);
	}

	if (gpu->aspace)
		FUNC7(gpu->aspace->mmu, gpu, a5xx_fault_handler);

	/* Set up the preemption specific bits and pieces for each ringbuffer */
	FUNC3(gpu);

	return gpu;
}