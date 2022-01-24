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
typedef  scalar_t__ u32 ;
struct kv_power_info {scalar_t__ lowest_valid; scalar_t__ highest_valid; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SMU7_MAX_LEVELS_GRAPHICS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,scalar_t__,int) ; 
 struct kv_power_info* FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC1(adev);
	u32 i;

	for (i = 0; i < SMU7_MAX_LEVELS_GRAPHICS; i++) {
		if (i >= pi->lowest_valid && i <= pi->highest_valid)
			FUNC0(adev, i, true);
	}
}