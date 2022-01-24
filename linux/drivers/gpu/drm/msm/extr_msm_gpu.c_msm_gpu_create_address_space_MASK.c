#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_gpu {TYPE_2__* dev; int /*<<< orphan*/  name; } ;
struct msm_gem_address_space {TYPE_4__* mmu; } ;
struct TYPE_5__ {void* aperture_end; void* aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct TYPE_8__ {TYPE_3__* funcs; } ;
struct TYPE_7__ {int (* attach ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct msm_gem_address_space* FUNC2 (struct msm_gem_address_space*) ; 
 struct msm_gem_address_space* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct iommu_domain* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct iommu_domain*) ; 
 struct msm_gem_address_space* FUNC9 (int /*<<< orphan*/ *,struct iommu_domain*,char*) ; 
 struct msm_gem_address_space* FUNC10 (int /*<<< orphan*/ *,struct msm_gpu*,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct msm_gpu*) ; 

__attribute__((used)) static struct msm_gem_address_space *
FUNC14(struct msm_gpu *gpu, struct platform_device *pdev,
		uint64_t va_start, uint64_t va_end)
{
	struct msm_gem_address_space *aspace;
	int ret;

	/*
	 * Setup IOMMU.. eventually we will (I think) do this once per context
	 * and have separate page tables per context.  For now, to keep things
	 * simple and to get something working, just use a single address space:
	 */
	if (!FUNC6(FUNC13(gpu))) {
		struct iommu_domain *iommu = FUNC7(&platform_bus_type);
		if (!iommu)
			return NULL;

		iommu->geometry.aperture_start = va_start;
		iommu->geometry.aperture_end = va_end;

		FUNC1(gpu->dev->dev, "%s: using IOMMU\n", gpu->name);

		aspace = FUNC9(&pdev->dev, iommu, "gpu");
		if (FUNC4(aspace))
			FUNC8(iommu);
	} else {
		aspace = FUNC10(&pdev->dev, gpu, "gpu",
			va_start, va_end);
	}

	if (FUNC4(aspace)) {
		FUNC0(gpu->dev->dev, "failed to init mmu: %ld\n",
			FUNC5(aspace));
		return FUNC2(aspace);
	}

	ret = aspace->mmu->funcs->attach(aspace->mmu, NULL, 0);
	if (ret) {
		FUNC11(aspace);
		return FUNC3(ret);
	}

	return aspace;
}