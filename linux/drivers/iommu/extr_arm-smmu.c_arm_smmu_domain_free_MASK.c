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
struct arm_smmu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_smmu_domain*) ; 
 struct arm_smmu_domain* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC4(struct iommu_domain *domain)
{
	struct arm_smmu_domain *smmu_domain = FUNC3(domain);

	/*
	 * Free the domain resources. We assume that all devices have
	 * already been detached.
	 */
	FUNC1(domain);
	FUNC0(domain);
	FUNC2(smmu_domain);
}