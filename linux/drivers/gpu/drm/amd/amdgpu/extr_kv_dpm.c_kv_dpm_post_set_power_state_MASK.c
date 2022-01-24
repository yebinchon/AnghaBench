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
struct amdgpu_ps {int dummy; } ;
struct kv_power_info {struct amdgpu_ps requested_rps; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 struct kv_power_info* FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_ps*) ; 

__attribute__((used)) static void FUNC2(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct kv_power_info *pi = FUNC0(adev);
	struct amdgpu_ps *new_ps = &pi->requested_rps;

	FUNC1(adev, new_ps);
}