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
struct amdgpu_hive_info {int /*<<< orphan*/  hive_lock; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  number_devices; } ;
struct TYPE_3__ {int /*<<< orphan*/  supported; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;

/* Variables and functions */
 struct amdgpu_hive_info* FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_hive_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_hive_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct amdgpu_device *adev)
{
	struct amdgpu_hive_info *hive;

	if (!adev->gmc.xgmi.supported)
		return;

	hive = FUNC0(adev, 1);
	if (!hive)
		return;

	if (!(hive->number_devices--)) {
		FUNC1(adev, hive);
		FUNC3(&hive->hive_lock);
		FUNC3(&hive->reset_lock);
	} else {
		FUNC2(adev, hive);
		FUNC4(&hive->hive_lock);
	}
}