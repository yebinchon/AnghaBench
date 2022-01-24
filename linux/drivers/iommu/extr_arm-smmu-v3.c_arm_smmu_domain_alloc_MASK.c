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
struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {struct iommu_domain domain; int /*<<< orphan*/  devices_lock; int /*<<< orphan*/  devices; int /*<<< orphan*/  init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int IOMMU_DOMAIN_DMA ; 
 unsigned int IOMMU_DOMAIN_IDENTITY ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 scalar_t__ FUNC1 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_smmu_domain*) ; 
 struct arm_smmu_domain* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_domain *FUNC6(unsigned type)
{
	struct arm_smmu_domain *smmu_domain;

	if (type != IOMMU_DOMAIN_UNMANAGED &&
	    type != IOMMU_DOMAIN_DMA &&
	    type != IOMMU_DOMAIN_IDENTITY)
		return NULL;

	/*
	 * Allocate the domain and initialise some of its data structures.
	 * We can't really do anything meaningful until we've added a
	 * master.
	 */
	smmu_domain = FUNC3(sizeof(*smmu_domain), GFP_KERNEL);
	if (!smmu_domain)
		return NULL;

	if (type == IOMMU_DOMAIN_DMA &&
	    FUNC1(&smmu_domain->domain)) {
		FUNC2(smmu_domain);
		return NULL;
	}

	FUNC4(&smmu_domain->init_mutex);
	FUNC0(&smmu_domain->devices);
	FUNC5(&smmu_domain->devices_lock);

	return &smmu_domain->domain;
}