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
struct arm_smmu_master {int ats_enabled; struct arm_smmu_domain* domain; int /*<<< orphan*/  domain_head; } ;
struct arm_smmu_domain {int /*<<< orphan*/  devices_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_master*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_master*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct arm_smmu_master *master)
{
	unsigned long flags;
	struct arm_smmu_domain *smmu_domain = master->domain;

	if (!smmu_domain)
		return;

	FUNC0(master);

	FUNC3(&smmu_domain->devices_lock, flags);
	FUNC2(&master->domain_head);
	FUNC4(&smmu_domain->devices_lock, flags);

	master->domain = NULL;
	master->ats_enabled = false;
	FUNC1(master);
}