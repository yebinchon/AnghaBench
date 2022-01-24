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
struct msm_mmu {int dummy; } ;
struct msm_iommu {struct msm_mmu base; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct msm_mmu* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  funcs ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*,int /*<<< orphan*/ ,struct msm_iommu*) ; 
 struct msm_iommu* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_fault_handler ; 
 int /*<<< orphan*/  FUNC3 (struct msm_mmu*,struct device*,int /*<<< orphan*/ *) ; 

struct msm_mmu *FUNC4(struct device *dev, struct iommu_domain *domain)
{
	struct msm_iommu *iommu;

	iommu = FUNC2(sizeof(*iommu), GFP_KERNEL);
	if (!iommu)
		return FUNC0(-ENOMEM);

	iommu->domain = domain;
	FUNC3(&iommu->base, dev, &funcs);
	FUNC1(domain, msm_fault_handler, iommu);

	return &iommu->base;
}