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
struct pci_dev {int dummy; } ;
struct arm_smmu_master {int /*<<< orphan*/  dev; int /*<<< orphan*/  ats_enabled; struct arm_smmu_domain* domain; struct arm_smmu_device* smmu; } ;
struct arm_smmu_domain {int /*<<< orphan*/  nr_ats_masters; } ;
struct arm_smmu_device {int /*<<< orphan*/  pgsize_bitmap; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC4 (struct pci_dev*,size_t) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct arm_smmu_master *master)
{
	size_t stu;
	struct pci_dev *pdev;
	struct arm_smmu_device *smmu = master->smmu;
	struct arm_smmu_domain *smmu_domain = master->domain;

	/* Don't enable ATS at the endpoint if it's not enabled in the STE */
	if (!master->ats_enabled)
		return;

	/* Smallest Translation Unit: log2 of the smallest supported granule */
	stu = FUNC0(smmu->pgsize_bitmap);
	pdev = FUNC5(master->dev);

	FUNC2(&smmu_domain->nr_ats_masters);
	FUNC1(smmu_domain, 0, 0, 0);
	if (FUNC4(pdev, stu))
		FUNC3(master->dev, "Failed to enable ATS (STU %zu)\n", stu);
}