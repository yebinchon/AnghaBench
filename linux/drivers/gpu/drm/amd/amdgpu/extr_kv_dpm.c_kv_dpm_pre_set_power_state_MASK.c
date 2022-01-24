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
struct kv_power_info {int /*<<< orphan*/  current_rps; int /*<<< orphan*/  requested_rps; } ;
struct amdgpu_ps {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kv_power_info* FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_ps*) ; 

__attribute__((used)) static int FUNC3(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct kv_power_info *pi = FUNC1(adev);
	struct amdgpu_ps requested_ps = *adev->pm.dpm.requested_ps;
	struct amdgpu_ps *new_ps = &requested_ps;

	FUNC2(adev, new_ps);

	FUNC0(adev,
				    &pi->requested_rps,
				    &pi->current_rps);

	return 0;
}