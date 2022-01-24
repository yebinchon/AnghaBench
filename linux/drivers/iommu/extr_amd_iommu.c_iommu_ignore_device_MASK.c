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
typedef  size_t u16 ;
struct device {int dummy; } ;
struct dev_table_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * amd_iommu_dev_table ; 
 int /*<<< orphan*/ ** amd_iommu_rlookup_table ; 
 size_t FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	u16 alias;
	int devid;

	devid = FUNC1(dev);
	if (devid < 0)
		return;

	alias = FUNC0(dev);

	FUNC2(&amd_iommu_dev_table[devid], 0, sizeof(struct dev_table_entry));
	FUNC2(&amd_iommu_dev_table[alias], 0, sizeof(struct dev_table_entry));

	amd_iommu_rlookup_table[devid] = NULL;
	amd_iommu_rlookup_table[alias] = NULL;
}