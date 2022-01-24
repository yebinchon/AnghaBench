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
struct TYPE_2__ {int /*<<< orphan*/  cbndx; } ;
struct arm_smmu_domain {int /*<<< orphan*/  cb_lock; TYPE_1__ cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARM_SMMU_CB_TLBSTATUS ; 
 int /*<<< orphan*/  ARM_SMMU_CB_TLBSYNC ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *cookie)
{
	struct arm_smmu_domain *smmu_domain = cookie;
	struct arm_smmu_device *smmu = smmu_domain->smmu;
	unsigned long flags;

	FUNC2(&smmu_domain->cb_lock, flags);
	FUNC1(smmu, FUNC0(smmu, smmu_domain->cfg.cbndx),
			    ARM_SMMU_CB_TLBSYNC, ARM_SMMU_CB_TLBSTATUS);
	FUNC3(&smmu_domain->cb_lock, flags);
}