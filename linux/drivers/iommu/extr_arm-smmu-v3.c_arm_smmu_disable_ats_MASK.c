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
struct arm_smmu_master {int /*<<< orphan*/  dev; int /*<<< orphan*/  ats_enabled; struct arm_smmu_domain* domain; } ;
struct arm_smmu_domain {int /*<<< orphan*/  nr_ats_masters; } ;
struct arm_smmu_cmdq_ent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_master*,struct arm_smmu_cmdq_ent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smmu_cmdq_ent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct arm_smmu_master *master)
{
	struct arm_smmu_cmdq_ent cmd;
	struct arm_smmu_domain *smmu_domain = master->domain;

	if (!master->ats_enabled)
		return;

	FUNC3(FUNC4(master->dev));
	/*
	 * Ensure ATS is disabled at the endpoint before we issue the
	 * ATC invalidation via the SMMU.
	 */
	FUNC5();
	FUNC1(0, 0, 0, &cmd);
	FUNC0(master, &cmd);
	FUNC2(&smmu_domain->nr_ats_masters);
}