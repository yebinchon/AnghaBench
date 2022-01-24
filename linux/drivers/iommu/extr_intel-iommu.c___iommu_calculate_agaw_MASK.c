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
struct intel_iommu {int /*<<< orphan*/  cap; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,unsigned long*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct intel_iommu *iommu, int max_gaw)
{
	unsigned long sagaw;
	int agaw = -1;

	sagaw = FUNC0(iommu->cap);
	for (agaw = FUNC2(max_gaw);
	     agaw >= 0; agaw--) {
		if (FUNC1(agaw, &sagaw))
			break;
	}

	return agaw;
}