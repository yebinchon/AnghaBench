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
struct arm_smmu_domain {struct iommu_domain domain; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int IOMMU_DOMAIN_DMA ; 
 unsigned int IOMMU_DOMAIN_IDENTITY ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 scalar_t__ FUNC0 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_domain*) ; 
 struct arm_smmu_domain* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ using_legacy_binding ; 

__attribute__((used)) static struct iommu_domain *FUNC5(unsigned type)
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
	smmu_domain = FUNC2(sizeof(*smmu_domain), GFP_KERNEL);
	if (!smmu_domain)
		return NULL;

	if (type == IOMMU_DOMAIN_DMA && (using_legacy_binding ||
	    FUNC0(&smmu_domain->domain))) {
		FUNC1(smmu_domain);
		return NULL;
	}

	FUNC3(&smmu_domain->init_mutex);
	FUNC4(&smmu_domain->cb_lock);

	return &smmu_domain->domain;
}