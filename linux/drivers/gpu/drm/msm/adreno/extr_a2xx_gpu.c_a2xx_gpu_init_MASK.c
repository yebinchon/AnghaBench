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
struct platform_device {int dummy; } ;
struct msm_gpu {int /*<<< orphan*/  aspace; int /*<<< orphan*/  num_perfcntrs; int /*<<< orphan*/  perfcntrs; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {struct msm_gpu base; int /*<<< orphan*/  reg_offsets; int /*<<< orphan*/  registers; } ;
struct a2xx_gpu {struct adreno_gpu base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct msm_gpu* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  a200_registers ; 
 int /*<<< orphan*/  a220_registers ; 
 int /*<<< orphan*/  a225_registers ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  a2xx_register_offsets ; 
 int FUNC3 (struct drm_device*,struct platform_device*,struct adreno_gpu*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct adreno_gpu*) ; 
 scalar_t__ FUNC5 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  funcs ; 
 struct a2xx_gpu* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perfcntrs ; 

struct msm_gpu *FUNC8(struct drm_device *dev)
{
	struct a2xx_gpu *a2xx_gpu = NULL;
	struct adreno_gpu *adreno_gpu;
	struct msm_gpu *gpu;
	struct msm_drm_private *priv = dev->dev_private;
	struct platform_device *pdev = priv->gpu_pdev;
	int ret;

	if (!pdev) {
		FUNC6(dev->dev, "no a2xx device\n");
		ret = -ENXIO;
		goto fail;
	}

	a2xx_gpu = FUNC7(sizeof(*a2xx_gpu), GFP_KERNEL);
	if (!a2xx_gpu) {
		ret = -ENOMEM;
		goto fail;
	}

	adreno_gpu = &a2xx_gpu->base;
	gpu = &adreno_gpu->base;

	gpu->perfcntrs = perfcntrs;
	gpu->num_perfcntrs = FUNC0(perfcntrs);

	if (FUNC4(adreno_gpu))
		adreno_gpu->registers = a200_registers;
	else if (FUNC5(adreno_gpu))
		adreno_gpu->registers = a225_registers;
	else
		adreno_gpu->registers = a220_registers;

	adreno_gpu->reg_offsets = a2xx_register_offsets;

	ret = FUNC3(dev, pdev, adreno_gpu, &funcs, 1);
	if (ret)
		goto fail;

	if (!gpu->aspace) {
		FUNC6(dev->dev, "No memory protection without MMU\n");
		ret = -ENXIO;
		goto fail;
	}

	return gpu;

fail:
	if (a2xx_gpu)
		FUNC2(&a2xx_gpu->base.base);

	return FUNC1(ret);
}