#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {TYPE_2__* flush_ops; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* tlb_flush_all ) (struct arm_smmu_domain*) ;} ;
struct TYPE_4__ {TYPE_1__ tlb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_smmu_domain*) ; 
 struct arm_smmu_domain* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC4(struct iommu_domain *domain)
{
	struct arm_smmu_domain *smmu_domain = FUNC3(domain);
	struct arm_smmu_device *smmu = smmu_domain->smmu;

	if (smmu_domain->flush_ops) {
		FUNC0(smmu);
		smmu_domain->flush_ops->tlb.tlb_flush_all(smmu_domain);
		FUNC1(smmu);
	}
}