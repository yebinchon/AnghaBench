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
struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct amd_iommu *iommu;
	int devid;

	if (!FUNC0(dev))
		return;

	devid = FUNC1(dev);
	if (devid < 0)
		return;

	iommu = amd_iommu_rlookup_table[devid];

	FUNC3(dev);
	FUNC2(iommu);
}