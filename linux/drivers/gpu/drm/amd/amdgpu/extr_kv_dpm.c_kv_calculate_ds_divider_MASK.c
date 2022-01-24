#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct kv_power_info {scalar_t__ lowest_valid; scalar_t__ highest_valid; TYPE_1__* graphics_level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  SclkFrequency; int /*<<< orphan*/  DeepSleepDivId; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC1(adev);
	u32 sclk_in_sr = 10000; /* ??? */
	u32 i;

	if (pi->lowest_valid > pi->highest_valid)
		return -EINVAL;

	for (i = pi->lowest_valid; i <= pi->highest_valid; i++) {
		pi->graphics_level[i].DeepSleepDivId =
			FUNC2(adev,
							   FUNC0(pi->graphics_level[i].SclkFrequency),
							   sclk_in_sr);
	}
	return 0;
}