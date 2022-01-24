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
struct arm_smmu_device {int /*<<< orphan*/  global_sync_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_GR0 ; 
 int /*<<< orphan*/  ARM_SMMU_GR0_sTLBGSTATUS ; 
 int /*<<< orphan*/  ARM_SMMU_GR0_sTLBGSYNC ; 
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct arm_smmu_device *smmu)
{
	unsigned long flags;

	FUNC1(&smmu->global_sync_lock, flags);
	FUNC0(smmu, ARM_SMMU_GR0, ARM_SMMU_GR0_sTLBGSYNC,
			    ARM_SMMU_GR0_sTLBGSTATUS);
	FUNC2(&smmu->global_sync_lock, flags);
}