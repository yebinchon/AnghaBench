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
typedef  int /*<<< orphan*/  u32 ;
struct arm_smmu_device {void* smr_mask_mask; void* streamid_mask; int /*<<< orphan*/  smrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  SMR_ID ; 
 int /*<<< orphan*/  SMR_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct arm_smmu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct arm_smmu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct arm_smmu_device *smmu)
{
	u32 smr;

	if (!smmu->smrs)
		return;

	/*
	 * SMR.ID bits may not be preserved if the corresponding MASK
	 * bits are set, so check each one separately. We can reject
	 * masters later if they try to claim IDs outside these masks.
	 */
	smr = FUNC2(SMR_ID, smmu->streamid_mask);
	FUNC4(smmu, FUNC0(0), smr);
	smr = FUNC3(smmu, FUNC0(0));
	smmu->streamid_mask = FUNC1(SMR_ID, smr);

	smr = FUNC2(SMR_MASK, smmu->streamid_mask);
	FUNC4(smmu, FUNC0(0), smr);
	smr = FUNC3(smmu, FUNC0(0));
	smmu->smr_mask_mask = FUNC1(SMR_MASK, smr);
}