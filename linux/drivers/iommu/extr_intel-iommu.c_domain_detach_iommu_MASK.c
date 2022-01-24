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
struct intel_iommu {size_t seq_id; int /*<<< orphan*/  domain_ids; int /*<<< orphan*/  lock; } ;
struct dmar_domain {scalar_t__* iommu_refcnt; int iommu_count; int* iommu_did; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_domain_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_iommu*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dmar_domain *domain,
			       struct intel_iommu *iommu)
{
	int num, count;

	FUNC0(&device_domain_lock);
	FUNC0(&iommu->lock);

	domain->iommu_refcnt[iommu->seq_id] -= 1;
	count = --domain->iommu_count;
	if (domain->iommu_refcnt[iommu->seq_id] == 0) {
		num = domain->iommu_did[iommu->seq_id];
		FUNC1(num, iommu->domain_ids);
		FUNC3(iommu, num, NULL);

		FUNC2(domain);
		domain->iommu_did[iommu->seq_id] = 0;
	}

	return count;
}