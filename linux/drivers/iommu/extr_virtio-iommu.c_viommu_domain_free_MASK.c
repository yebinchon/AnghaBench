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
struct viommu_domain {int /*<<< orphan*/  id; TYPE_1__* viommu; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain_ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct viommu_domain*) ; 
 struct viommu_domain* FUNC3 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct viommu_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iommu_domain *domain)
{
	struct viommu_domain *vdomain = FUNC3(domain);

	FUNC1(domain);

	/* Free all remaining mappings (size 2^64) */
	FUNC4(vdomain, 0, 0);

	if (vdomain->viommu)
		FUNC0(&vdomain->viommu->domain_ids, vdomain->id);

	FUNC2(vdomain);
}