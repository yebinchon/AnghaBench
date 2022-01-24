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
struct TYPE_2__ {int /*<<< orphan*/  asid; int /*<<< orphan*/  cbndx; } ;
struct arm_smmu_domain {TYPE_1__ cfg; int /*<<< orphan*/  smmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_CB_S1_TLBIASID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *cookie)
{
	struct arm_smmu_domain *smmu_domain = cookie;
	/*
	 * The TLBI write may be relaxed, so ensure that PTEs cleared by the
	 * current CPU are visible beforehand.
	 */
	FUNC2();
	FUNC0(smmu_domain->smmu, smmu_domain->cfg.cbndx,
			  ARM_SMMU_CB_S1_TLBIASID, smmu_domain->cfg.asid);
	FUNC1(cookie);
}