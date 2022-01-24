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
struct amdgpu_hive_info {int pstate; } ;
struct TYPE_3__ {int /*<<< orphan*/  hive_id; int /*<<< orphan*/  node_id; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; int /*<<< orphan*/  dev; int /*<<< orphan*/  smu; } ;

/* Variables and functions */
 struct amdgpu_hive_info* FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(struct amdgpu_device *adev, int pstate)
{
	int ret = 0;
	struct amdgpu_hive_info *hive = FUNC0(adev, 0);

	if (!hive)
		return 0;

	if (hive->pstate == pstate)
		return 0;

	FUNC1(adev->dev, "Set xgmi pstate %d.\n", pstate);

	if (FUNC3(adev))
		ret = FUNC4(&adev->smu, pstate);
	if (ret)
		FUNC2(adev->dev,
			"XGMI: Set pstate failure on device %llx, hive %llx, ret %d",
			adev->gmc.xgmi.node_id,
			adev->gmc.xgmi.hive_id, ret);

	return ret;
}