#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct msm_gem_address_space {TYPE_5__* mmu; } ;
struct TYPE_6__ {int aperture_start; int aperture_end; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct TYPE_9__ {struct msm_gem_address_space* aspace; } ;
struct dpu_kms {TYPE_4__ base; TYPE_2__* dev; } ;
struct TYPE_10__ {TYPE_3__* funcs; } ;
struct TYPE_8__ {int (* attach ) (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct msm_gem_address_space*) ; 
 int FUNC3 (struct msm_gem_address_space*) ; 
 struct iommu_domain* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_domain*) ; 
 int /*<<< orphan*/  iommu_ports ; 
 struct msm_gem_address_space* FUNC6 (int /*<<< orphan*/ ,struct iommu_domain*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dpu_kms *dpu_kms)
{
	struct iommu_domain *domain;
	struct msm_gem_address_space *aspace;
	int ret;

	domain = FUNC4(&platform_bus_type);
	if (!domain)
		return 0;

	domain->geometry.aperture_start = 0x1000;
	domain->geometry.aperture_end = 0xffffffff;

	aspace = FUNC6(dpu_kms->dev->dev,
			domain, "dpu1");
	if (FUNC2(aspace)) {
		FUNC5(domain);
		return FUNC3(aspace);
	}

	ret = aspace->mmu->funcs->attach(aspace->mmu, iommu_ports,
			FUNC0(iommu_ports));
	if (ret) {
		FUNC1("failed to attach iommu %d\n", ret);
		FUNC7(aspace);
		return ret;
	}

	dpu_kms->base.aspace = aspace;
	return 0;
}