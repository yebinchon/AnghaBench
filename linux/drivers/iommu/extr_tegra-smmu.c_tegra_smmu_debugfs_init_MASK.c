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
struct tegra_smmu {int /*<<< orphan*/  debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_smmu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_smmu_clients_fops ; 
 int /*<<< orphan*/  tegra_smmu_swgroups_fops ; 

__attribute__((used)) static void FUNC2(struct tegra_smmu *smmu)
{
	smmu->debugfs = FUNC0("smmu", NULL);
	if (!smmu->debugfs)
		return;

	FUNC1("swgroups", S_IRUGO, smmu->debugfs, smmu,
			    &tegra_smmu_swgroups_fops);
	FUNC1("clients", S_IRUGO, smmu->debugfs, smmu,
			    &tegra_smmu_clients_fops);
}