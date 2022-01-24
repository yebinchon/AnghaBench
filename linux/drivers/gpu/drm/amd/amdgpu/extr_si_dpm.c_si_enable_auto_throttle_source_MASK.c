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
struct rv7xx_power_info {int active_auto_throttle_sources; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum amdgpu_dpm_auto_throttle_src { ____Placeholder_amdgpu_dpm_auto_throttle_src } amdgpu_dpm_auto_throttle_src ;

/* Variables and functions */
 struct rv7xx_power_info* FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
					   enum amdgpu_dpm_auto_throttle_src source,
					   bool enable)
{
	struct rv7xx_power_info *pi = FUNC0(adev);

	if (enable) {
		if (!(pi->active_auto_throttle_sources & (1 << source))) {
			pi->active_auto_throttle_sources |= 1 << source;
			FUNC1(adev, pi->active_auto_throttle_sources);
		}
	} else {
		if (pi->active_auto_throttle_sources & (1 << source)) {
			pi->active_auto_throttle_sources &= ~(1 << source);
			FUNC1(adev, pi->active_auto_throttle_sources);
		}
	}
}