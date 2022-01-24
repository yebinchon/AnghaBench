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
struct amd_iommu {int index; void* debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NAME_LEN ; 
 void* amd_iommu_debugfs ; 
 int /*<<< orphan*/  amd_iommu_debugfs_lock ; 
 void* FUNC0 (char*,void*) ; 
 void* iommu_debugfs_dir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC4(struct amd_iommu *iommu)
{
	char name[MAX_NAME_LEN + 1];

	FUNC1(&amd_iommu_debugfs_lock);
	if (!amd_iommu_debugfs)
		amd_iommu_debugfs = FUNC0("amd",
						       iommu_debugfs_dir);
	FUNC2(&amd_iommu_debugfs_lock);

	FUNC3(name, MAX_NAME_LEN, "iommu%02d", iommu->index);
	iommu->debugfs = FUNC0(name, amd_iommu_debugfs);
}