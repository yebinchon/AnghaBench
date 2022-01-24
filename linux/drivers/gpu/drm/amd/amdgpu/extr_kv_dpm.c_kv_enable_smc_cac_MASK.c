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
struct kv_power_info {int cac_enabled; scalar_t__ caps_cac; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_DisableCac ; 
 int /*<<< orphan*/  PPSMC_MSG_EnableCac ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev, bool enable)
{
	struct kv_power_info *pi = FUNC1(adev);
	int ret = 0;

	if (pi->caps_cac) {
		if (enable) {
			ret = FUNC0(adev, PPSMC_MSG_EnableCac);
			if (ret)
				pi->cac_enabled = false;
			else
				pi->cac_enabled = true;
		} else if (pi->cac_enabled) {
			FUNC0(adev, PPSMC_MSG_DisableCac);
			pi->cac_enabled = false;
		}
	}

	return ret;
}