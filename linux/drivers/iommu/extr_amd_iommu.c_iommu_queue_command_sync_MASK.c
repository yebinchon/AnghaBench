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
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct amd_iommu*,struct iommu_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct amd_iommu *iommu,
				    struct iommu_cmd *cmd,
				    bool sync)
{
	unsigned long flags;
	int ret;

	FUNC1(&iommu->lock, flags);
	ret = FUNC0(iommu, cmd, sync);
	FUNC2(&iommu->lock, flags);

	return ret;
}