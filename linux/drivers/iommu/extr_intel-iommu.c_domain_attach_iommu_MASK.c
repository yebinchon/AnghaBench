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
struct intel_iommu {size_t seq_id; int /*<<< orphan*/  node; int /*<<< orphan*/  domain_ids; int /*<<< orphan*/  name; int /*<<< orphan*/  cap; int /*<<< orphan*/  lock; } ;
struct dmar_domain {int* iommu_refcnt; int iommu_count; int* iommu_did; int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_domain_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_iommu*,int,struct dmar_domain*) ; 

__attribute__((used)) static int FUNC7(struct dmar_domain *domain,
			       struct intel_iommu *iommu)
{
	unsigned long ndomains;
	int num;

	FUNC0(&device_domain_lock);
	FUNC0(&iommu->lock);

	domain->iommu_refcnt[iommu->seq_id] += 1;
	domain->iommu_count += 1;
	if (domain->iommu_refcnt[iommu->seq_id] == 1) {
		ndomains = FUNC1(iommu->cap);
		num      = FUNC3(iommu->domain_ids, ndomains);

		if (num >= ndomains) {
			FUNC4("%s: No free domain ids\n", iommu->name);
			domain->iommu_refcnt[iommu->seq_id] -= 1;
			domain->iommu_count -= 1;
			return -ENOSPC;
		}

		FUNC5(num, iommu->domain_ids);
		FUNC6(iommu, num, domain);

		domain->iommu_did[iommu->seq_id] = num;
		domain->nid			 = iommu->node;

		FUNC2(domain);
	}

	return 0;
}