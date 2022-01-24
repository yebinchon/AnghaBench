#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_hive_info {int /*<<< orphan*/  number_devices; } ;
struct TYPE_7__ {int /*<<< orphan*/  hive_id; int /*<<< orphan*/  node_id; } ;
struct TYPE_6__ {TYPE_3__ xgmi; } ;
struct TYPE_5__ {int /*<<< orphan*/  top_info; } ;
struct TYPE_8__ {TYPE_1__ xgmi_context; } ;
struct amdgpu_device {TYPE_2__ gmc; int /*<<< orphan*/  dev; TYPE_4__ psp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct amdgpu_hive_info *hive, struct amdgpu_device *adev)
{
	int ret = -EINVAL;

	/* Each psp need to set the latest topology */
	ret = FUNC1(&adev->psp,
					 hive->number_devices,
					 &adev->psp.xgmi_context.top_info);
	if (ret)
		FUNC0(adev->dev,
			"XGMI: Set topology failure on device %llx, hive %llx, ret %d",
			adev->gmc.xgmi.node_id,
			adev->gmc.xgmi.hive_id, ret);

	return ret;
}