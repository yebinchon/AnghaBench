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
struct tegra_smmu_as {int /*<<< orphan*/ * count; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 

__attribute__((used)) static void FUNC1(struct tegra_smmu_as *as, unsigned long iova)
{
	unsigned int pd_index = FUNC0(iova);

	as->count[pd_index]++;
}