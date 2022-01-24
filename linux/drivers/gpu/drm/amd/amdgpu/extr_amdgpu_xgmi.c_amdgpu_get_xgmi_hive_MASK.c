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
struct amdgpu_hive_info {scalar_t__ hive_id; int pstate; int /*<<< orphan*/  hive_lock; int /*<<< orphan*/  reset_lock; int /*<<< orphan*/  device_list; struct amdgpu_device* adev; } ;
struct TYPE_3__ {scalar_t__ hive_id; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;

/* Variables and functions */
 int AMDGPU_MAX_XGMI_HIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*,struct amdgpu_hive_info*) ; 
 int hive_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct amdgpu_hive_info* xgmi_hives ; 
 int /*<<< orphan*/  xgmi_mutex ; 

struct amdgpu_hive_info *FUNC5(struct amdgpu_device *adev, int lock)
{
	int i;
	struct amdgpu_hive_info *tmp;

	if (!adev->gmc.xgmi.hive_id)
		return NULL;

	FUNC3(&xgmi_mutex);

	for (i = 0 ; i < hive_count; ++i) {
		tmp = &xgmi_hives[i];
		if (tmp->hive_id == adev->gmc.xgmi.hive_id) {
			if (lock)
				FUNC3(&tmp->hive_lock);
			FUNC4(&xgmi_mutex);
			return tmp;
		}
	}
	if (i >= AMDGPU_MAX_XGMI_HIVE) {
		FUNC4(&xgmi_mutex);
		return NULL;
	}

	/* initialize new hive if not exist */
	tmp = &xgmi_hives[hive_count++];

	if (FUNC1(adev, tmp)) {
		FUNC4(&xgmi_mutex);
		return NULL;
	}

	tmp->adev = adev;
	tmp->hive_id = adev->gmc.xgmi.hive_id;
	FUNC0(&tmp->device_list);
	FUNC2(&tmp->hive_lock);
	FUNC2(&tmp->reset_lock);

	if (lock)
		FUNC3(&tmp->hive_lock);
	tmp->pstate = -1;
	FUNC4(&xgmi_mutex);

	return tmp;
}