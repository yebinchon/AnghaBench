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
struct tegra_smmu {int /*<<< orphan*/  lock; int /*<<< orphan*/  asids; TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned long num_asids; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tegra_smmu *smmu, unsigned int *idp)
{
	unsigned long id;

	FUNC1(&smmu->lock);

	id = FUNC0(smmu->asids, smmu->soc->num_asids);
	if (id >= smmu->soc->num_asids) {
		FUNC2(&smmu->lock);
		return -ENOSPC;
	}

	FUNC3(id, smmu->asids);
	*idp = id;

	FUNC2(&smmu->lock);
	return 0;
}