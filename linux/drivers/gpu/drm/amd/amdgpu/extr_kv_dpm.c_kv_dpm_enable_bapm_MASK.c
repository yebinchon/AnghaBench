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
struct kv_power_info {scalar_t__ bapm_enable; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct amdgpu_device*,int) ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC3(void *handle, bool enable)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct kv_power_info *pi = FUNC2(adev);
	int ret;

	if (pi->bapm_enable) {
		ret = FUNC1(adev, enable);
		if (ret)
			FUNC0("amdgpu_kv_smc_bapm_enable failed\n");
	}
}