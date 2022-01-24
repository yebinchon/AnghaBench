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
struct TYPE_3__ {int num_queue_per_pipe; int num_pipe_per_mec; int num_mec; int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_4__ {scalar_t__ num_compute_rings; TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int AMDGPU_MAX_COMPUTE_QUEUES ; 
 scalar_t__ AMDGPU_MAX_COMPUTE_RINGS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(struct amdgpu_device *adev)
{
	int i, queue, pipe, mec;
	bool multipipe_policy = FUNC1(adev);

	/* policy for amdgpu compute queue ownership */
	for (i = 0; i < AMDGPU_MAX_COMPUTE_QUEUES; ++i) {
		queue = i % adev->gfx.mec.num_queue_per_pipe;
		pipe = (i / adev->gfx.mec.num_queue_per_pipe)
			% adev->gfx.mec.num_pipe_per_mec;
		mec = (i / adev->gfx.mec.num_queue_per_pipe)
			/ adev->gfx.mec.num_pipe_per_mec;

		/* we've run out of HW */
		if (mec >= adev->gfx.mec.num_mec)
			break;

		if (multipipe_policy) {
			/* policy: amdgpu owns the first two queues of the first MEC */
			if (mec == 0 && queue < 2)
				FUNC3(i, adev->gfx.mec.queue_bitmap);
		} else {
			/* policy: amdgpu owns all queues in the first pipe */
			if (mec == 0 && pipe == 0)
				FUNC3(i, adev->gfx.mec.queue_bitmap);
		}
	}

	/* update the number of active compute rings */
	adev->gfx.num_compute_rings =
		FUNC2(adev->gfx.mec.queue_bitmap, AMDGPU_MAX_COMPUTE_QUEUES);

	/* If you hit this case and edited the policy, you probably just
	 * need to increase AMDGPU_MAX_COMPUTE_RINGS */
	if (FUNC0(adev->gfx.num_compute_rings > AMDGPU_MAX_COMPUTE_RINGS))
		adev->gfx.num_compute_rings = AMDGPU_MAX_COMPUTE_RINGS;
}