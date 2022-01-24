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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  accum_us_vis; int /*<<< orphan*/  accum_us; } ;
struct amdgpu_device {TYPE_1__ mm_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct amdgpu_device *adev, u64 num_bytes,
				  u64 num_vis_bytes)
{
	FUNC1(&adev->mm_stats.lock);
	adev->mm_stats.accum_us -= FUNC0(adev, num_bytes);
	adev->mm_stats.accum_us_vis -= FUNC0(adev, num_vis_bytes);
	FUNC2(&adev->mm_stats.lock);
}