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
typedef  int /*<<< orphan*/  u64 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int /*<<< orphan*/  lock; scalar_t__ cmd_sem; int /*<<< orphan*/  need_sync; } ;

/* Variables and functions */
 int FUNC0 (struct amd_iommu*,struct iommu_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (scalar_t__*) ; 

__attribute__((used)) static int FUNC5(struct amd_iommu *iommu)
{
	struct iommu_cmd cmd;
	unsigned long flags;
	int ret;

	if (!iommu->need_sync)
		return 0;


	FUNC1(&cmd, (u64)&iommu->cmd_sem);

	FUNC2(&iommu->lock, flags);

	iommu->cmd_sem = 0;

	ret = FUNC0(iommu, &cmd, false);
	if (ret)
		goto out_unlock;

	ret = FUNC4(&iommu->cmd_sem);

out_unlock:
	FUNC3(&iommu->lock, flags);

	return ret;
}