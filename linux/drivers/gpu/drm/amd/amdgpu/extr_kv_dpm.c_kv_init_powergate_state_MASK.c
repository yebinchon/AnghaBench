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
struct kv_power_info {int uvd_power_gated; int vce_power_gated; int samu_power_gated; int acp_power_gated; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 struct kv_power_info* FUNC0 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC0(adev);

	pi->uvd_power_gated = false;
	pi->vce_power_gated = false;
	pi->samu_power_gated = false;
	pi->acp_power_gated = false;

}