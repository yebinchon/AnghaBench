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
typedef  unsigned long long uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  gpu_clock_mutex; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmRLC_CAPTURE_GPU_CLOCK_COUNT ; 
 int /*<<< orphan*/  mmRLC_GPU_CLOCK_COUNT_LSB ; 
 int /*<<< orphan*/  mmRLC_GPU_CLOCK_COUNT_MSB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t FUNC4(struct amdgpu_device *adev)
{
	uint64_t clock;

	FUNC2(&adev->gfx.gpu_clock_mutex);
	FUNC1(GC, 0, mmRLC_CAPTURE_GPU_CLOCK_COUNT, 1);
	clock = (uint64_t)FUNC0(GC, 0, mmRLC_GPU_CLOCK_COUNT_LSB) |
		((uint64_t)FUNC0(GC, 0, mmRLC_GPU_CLOCK_COUNT_MSB) << 32ULL);
	FUNC3(&adev->gfx.gpu_clock_mutex);
	return clock;
}