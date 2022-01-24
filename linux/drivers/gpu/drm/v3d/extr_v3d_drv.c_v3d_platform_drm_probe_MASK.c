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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {struct v3d_dev* dev_private; } ;
struct v3d_dev {int va_width; int ver; int cores; int /*<<< orphan*/  mmu_scratch_paddr; int /*<<< orphan*/  mmu_scratch; struct drm_device drm; int /*<<< orphan*/  gca_regs; int /*<<< orphan*/  bridge_regs; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * core_regs; int /*<<< orphan*/  hub_regs; struct platform_device* pdev; struct device* dev; } ;
struct device {int /*<<< orphan*/  coherent_dma_mask; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1 ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1_NCORES ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1_REV ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1_TVER ; 
 int /*<<< orphan*/  V3D_MMU_DEBUG_INFO ; 
 int /*<<< orphan*/  V3D_MMU_PA_WIDTH ; 
 int /*<<< orphan*/  V3D_MMU_VA_WIDTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct v3d_dev*) ; 
 struct v3d_dev* FUNC14 (int,int) ; 
 int FUNC15 (struct v3d_dev*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  v3d_drm_driver ; 
 int /*<<< orphan*/  FUNC20 (struct drm_device*) ; 
 int FUNC21 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct v3d_dev*) ; 
 int FUNC23 (struct v3d_dev*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct drm_device *drm;
	struct v3d_dev *v3d;
	int ret;
	u32 mmu_debug;
	u32 ident1;


	v3d = FUNC14(sizeof(*v3d), GFP_KERNEL);
	if (!v3d)
		return -ENOMEM;
	v3d->dev = dev;
	v3d->pdev = pdev;
	drm = &v3d->drm;

	ret = FUNC15(v3d, &v3d->hub_regs, "hub");
	if (ret)
		goto dev_free;

	ret = FUNC15(v3d, &v3d->core_regs[0], "core0");
	if (ret)
		goto dev_free;

	mmu_debug = FUNC4(V3D_MMU_DEBUG_INFO);
	dev->coherent_dma_mask =
		FUNC0(30 + FUNC3(mmu_debug, V3D_MMU_PA_WIDTH));
	v3d->va_width = 30 + FUNC3(mmu_debug, V3D_MMU_VA_WIDTH);

	ident1 = FUNC4(V3D_HUB_IDENT1);
	v3d->ver = (FUNC3(ident1, V3D_HUB_IDENT1_TVER) * 10 +
		    FUNC3(ident1, V3D_HUB_IDENT1_REV));
	v3d->cores = FUNC3(ident1, V3D_HUB_IDENT1_NCORES);
	FUNC5(v3d->cores > 1); /* multicore not yet implemented */

	v3d->reset = FUNC7(dev, NULL);
	if (FUNC1(v3d->reset)) {
		ret = FUNC2(v3d->reset);

		if (ret == -EPROBE_DEFER)
			goto dev_free;

		v3d->reset = NULL;
		ret = FUNC15(v3d, &v3d->bridge_regs, "bridge");
		if (ret) {
			FUNC6(dev,
				"Failed to get reset control or bridge regs\n");
			goto dev_free;
		}
	}

	if (v3d->ver < 41) {
		ret = FUNC15(v3d, &v3d->gca_regs, "gca");
		if (ret)
			goto dev_free;
	}

	v3d->mmu_scratch = FUNC8(dev, 4096, &v3d->mmu_scratch_paddr,
					GFP_KERNEL | __GFP_NOWARN | __GFP_ZERO);
	if (!v3d->mmu_scratch) {
		FUNC6(dev, "Failed to allocate MMU scratch page\n");
		ret = -ENOMEM;
		goto dev_free;
	}

	FUNC19(dev);
	FUNC18(dev, 50);
	FUNC17(dev);

	ret = FUNC10(&v3d->drm, &v3d_drm_driver, dev);
	if (ret)
		goto dma_free;

	FUNC16(pdev, drm);
	drm->dev_private = v3d;

	ret = FUNC21(drm);
	if (ret)
		goto dev_destroy;

	ret = FUNC23(v3d);
	if (ret)
		goto gem_destroy;

	ret = FUNC12(drm, 0);
	if (ret)
		goto irq_disable;

	return 0;

irq_disable:
	FUNC22(v3d);
gem_destroy:
	FUNC20(drm);
dev_destroy:
	FUNC11(drm);
dma_free:
	FUNC9(dev, 4096, v3d->mmu_scratch, v3d->mmu_scratch_paddr);
dev_free:
	FUNC13(v3d);
	return ret;
}