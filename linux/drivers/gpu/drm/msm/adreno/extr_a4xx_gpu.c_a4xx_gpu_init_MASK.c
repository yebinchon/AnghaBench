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
struct ocmem_buf {int len; int /*<<< orphan*/  addr; } ;
struct msm_gpu {int /*<<< orphan*/  aspace; scalar_t__ num_perfcntrs; int /*<<< orphan*/ * perfcntrs; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int gmem; struct msm_gpu base; int /*<<< orphan*/  reg_offsets; int /*<<< orphan*/  registers; } ;
struct a4xx_gpu {struct adreno_gpu base; int /*<<< orphan*/  ocmem_base; struct ocmem_buf* ocmem_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct msm_gpu* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCMEM_GRAPHICS ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  a4xx_register_offsets ; 
 int /*<<< orphan*/  a4xx_registers ; 
 int FUNC4 (struct drm_device*,struct platform_device*,struct adreno_gpu*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  funcs ; 
 struct a4xx_gpu* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct ocmem_buf* FUNC7 (int /*<<< orphan*/ ,int) ; 

struct msm_gpu *FUNC8(struct drm_device *dev)
{
	struct a4xx_gpu *a4xx_gpu = NULL;
	struct adreno_gpu *adreno_gpu;
	struct msm_gpu *gpu;
	struct msm_drm_private *priv = dev->dev_private;
	struct platform_device *pdev = priv->gpu_pdev;
	int ret;

	if (!pdev) {
		FUNC1(dev->dev, "no a4xx device\n");
		ret = -ENXIO;
		goto fail;
	}

	a4xx_gpu = FUNC6(sizeof(*a4xx_gpu), GFP_KERNEL);
	if (!a4xx_gpu) {
		ret = -ENOMEM;
		goto fail;
	}

	adreno_gpu = &a4xx_gpu->base;
	gpu = &adreno_gpu->base;

	gpu->perfcntrs = NULL;
	gpu->num_perfcntrs = 0;

	adreno_gpu->registers = a4xx_registers;
	adreno_gpu->reg_offsets = a4xx_register_offsets;

	ret = FUNC4(dev, pdev, adreno_gpu, &funcs, 1);
	if (ret)
		goto fail;

	/* if needed, allocate gmem: */
	if (FUNC5(adreno_gpu)) {
#ifdef CONFIG_MSM_OCMEM
		/* TODO this is different/missing upstream: */
		struct ocmem_buf *ocmem_hdl =
				ocmem_allocate(OCMEM_GRAPHICS, adreno_gpu->gmem);

		a4xx_gpu->ocmem_hdl = ocmem_hdl;
		a4xx_gpu->ocmem_base = ocmem_hdl->addr;
		adreno_gpu->gmem = ocmem_hdl->len;
		DBG("using %dK of OCMEM at 0x%08x", adreno_gpu->gmem / 1024,
				a4xx_gpu->ocmem_base);
#endif
	}

	if (!gpu->aspace) {
		/* TODO we think it is possible to configure the GPU to
		 * restrict access to VRAM carveout.  But the required
		 * registers are unknown.  For now just bail out and
		 * limp along with just modesetting.  If it turns out
		 * to not be possible to restrict access, then we must
		 * implement a cmdstream validator.
		 */
		FUNC1(dev->dev, "No memory protection without IOMMU\n");
		ret = -ENXIO;
		goto fail;
	}

	return gpu;

fail:
	if (a4xx_gpu)
		FUNC3(&a4xx_gpu->base.base);

	return FUNC2(ret);
}