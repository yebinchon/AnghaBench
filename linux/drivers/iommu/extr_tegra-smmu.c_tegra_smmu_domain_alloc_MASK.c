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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int aperture_end; int force_aperture; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct tegra_smmu_as {int attr; struct iommu_domain domain; int /*<<< orphan*/  pd; struct tegra_smmu_as* count; void* pts; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 int /*<<< orphan*/  SMMU_NUM_PDE ; 
 int SMMU_PD_NONSECURE ; 
 int SMMU_PD_READABLE ; 
 int SMMU_PD_WRITABLE ; 
 int __GFP_DMA ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_smmu_as*) ; 
 struct tegra_smmu_as* FUNC4 (int,int) ; 

__attribute__((used)) static struct iommu_domain *FUNC5(unsigned type)
{
	struct tegra_smmu_as *as;

	if (type != IOMMU_DOMAIN_UNMANAGED)
		return NULL;

	as = FUNC4(sizeof(*as), GFP_KERNEL);
	if (!as)
		return NULL;

	as->attr = SMMU_PD_READABLE | SMMU_PD_WRITABLE | SMMU_PD_NONSECURE;

	as->pd = FUNC1(GFP_KERNEL | __GFP_DMA | __GFP_ZERO);
	if (!as->pd) {
		FUNC3(as);
		return NULL;
	}

	as->count = FUNC2(SMMU_NUM_PDE, sizeof(u32), GFP_KERNEL);
	if (!as->count) {
		FUNC0(as->pd);
		FUNC3(as);
		return NULL;
	}

	as->pts = FUNC2(SMMU_NUM_PDE, sizeof(*as->pts), GFP_KERNEL);
	if (!as->pts) {
		FUNC3(as->count);
		FUNC0(as->pd);
		FUNC3(as);
		return NULL;
	}

	/* setup aperture */
	as->domain.geometry.aperture_start = 0;
	as->domain.geometry.aperture_end = 0xffffffff;
	as->domain.geometry.force_aperture = true;

	return &as->domain;
}