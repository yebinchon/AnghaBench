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
struct viommu_domain {int /*<<< orphan*/  viommu; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 struct viommu_domain* FUNC0 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iommu_domain *domain,
			      struct iommu_iotlb_gather *gather)
{
	struct viommu_domain *vdomain = FUNC0(domain);

	FUNC1(vdomain->viommu);
}