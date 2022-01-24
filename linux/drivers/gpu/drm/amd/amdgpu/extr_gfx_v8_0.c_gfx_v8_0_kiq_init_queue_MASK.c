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
struct vi_mqd_allocation {int dynamic_cu_mask; int dynamic_rb_mask; } ;
struct vi_mqd {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; scalar_t__ wptr; struct vi_mqd* mqd_ptr; struct amdgpu_device* adev; } ;
struct TYPE_3__ {struct vi_mqd** mqd_backup; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; int /*<<< orphan*/  srbm_mutex; scalar_t__ in_gpu_reset; } ;

/* Variables and functions */
 int AMDGPU_MAX_COMPUTE_RINGS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct vi_mqd*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct vi_mqd*,struct vi_mqd*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	struct vi_mqd *mqd = ring->mqd_ptr;
	int mqd_idx = AMDGPU_MAX_COMPUTE_RINGS;

	FUNC1(ring);

	if (adev->in_gpu_reset) { /* for GPU_RESET case */
		/* reset MQD to a clean status */
		if (adev->gfx.mec.mqd_backup[mqd_idx])
			FUNC4(mqd, adev->gfx.mec.mqd_backup[mqd_idx], sizeof(struct vi_mqd_allocation));

		/* reset ring buffer */
		ring->wptr = 0;
		FUNC0(ring);
		FUNC6(&adev->srbm_mutex);
		FUNC8(adev, ring->me, ring->pipe, ring->queue, 0);
		FUNC2(adev, mqd);
		FUNC8(adev, 0, 0, 0, 0);
		FUNC7(&adev->srbm_mutex);
	} else {
		FUNC5((void *)mqd, 0, sizeof(struct vi_mqd_allocation));
		((struct vi_mqd_allocation *)mqd)->dynamic_cu_mask = 0xFFFFFFFF;
		((struct vi_mqd_allocation *)mqd)->dynamic_rb_mask = 0xFFFFFFFF;
		FUNC6(&adev->srbm_mutex);
		FUNC8(adev, ring->me, ring->pipe, ring->queue, 0);
		FUNC3(ring);
		FUNC2(adev, mqd);
		FUNC8(adev, 0, 0, 0, 0);
		FUNC7(&adev->srbm_mutex);

		if (adev->gfx.mec.mqd_backup[mqd_idx])
			FUNC4(adev->gfx.mec.mqd_backup[mqd_idx], mqd, sizeof(struct vi_mqd_allocation));
	}

	return 0;
}