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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_smmu_swgroup {int /*<<< orphan*/  reg; } ;
struct tegra_smmu {TYPE_1__* soc; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg; int /*<<< orphan*/  bit; } ;
struct tegra_mc_client {unsigned int swgroup; TYPE_2__ smmu; } ;
struct TYPE_3__ {unsigned int num_clients; struct tegra_mc_client* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMMU_ASID_ENABLE ; 
 int /*<<< orphan*/  SMMU_ASID_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_smmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_smmu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_smmu_swgroup* FUNC4 (struct tegra_smmu*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct tegra_smmu *smmu, unsigned int swgroup,
			      unsigned int asid)
{
	const struct tegra_smmu_swgroup *group;
	unsigned int i;
	u32 value;

	for (i = 0; i < smmu->soc->num_clients; i++) {
		const struct tegra_mc_client *client = &smmu->soc->clients[i];

		if (client->swgroup != swgroup)
			continue;

		value = FUNC2(smmu, client->smmu.reg);
		value |= FUNC0(client->smmu.bit);
		FUNC3(smmu, value, client->smmu.reg);
	}

	group = FUNC4(smmu, swgroup);
	if (group) {
		value = FUNC2(smmu, group->reg);
		value &= ~SMMU_ASID_MASK;
		value |= FUNC1(asid);
		value |= SMMU_ASID_ENABLE;
		FUNC3(smmu, value, group->reg);
	}
}