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
struct tegra_smmu_as {struct tegra_smmu_as* pts; struct tegra_smmu_as* count; int /*<<< orphan*/  use_count; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_smmu_as*) ; 
 struct tegra_smmu_as* FUNC2 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC3(struct iommu_domain *domain)
{
	struct tegra_smmu_as *as = FUNC2(domain);

	/* TODO: free page directory and page tables */

	FUNC0(as->use_count);
	FUNC1(as->count);
	FUNC1(as->pts);
	FUNC1(as);
}