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
struct intel_iommu {int /*<<< orphan*/  cap; } ;
struct dmar_domain {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_iommu*,struct dmar_domain*,unsigned long,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_iommu*) ; 

__attribute__((used)) static inline void FUNC3(struct intel_iommu *iommu,
					struct dmar_domain *domain,
					unsigned long pfn, unsigned int pages)
{
	/* It's a non-present to present mapping. Only flush if caching mode */
	if (FUNC0(iommu->cap))
		FUNC1(iommu, domain, pfn, pages, 0, 1);
	else
		FUNC2(iommu);
}