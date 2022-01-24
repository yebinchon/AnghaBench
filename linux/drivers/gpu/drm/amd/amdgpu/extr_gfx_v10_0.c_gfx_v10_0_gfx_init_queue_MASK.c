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
struct v10_gfx_mqd {int dummy; } ;
struct amdgpu_ring {int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; scalar_t__ wptr; struct v10_gfx_mqd* mqd_ptr; struct amdgpu_device* adev; } ;
struct TYPE_3__ {struct v10_gfx_mqd** mqd_backup; } ;
struct TYPE_4__ {TYPE_1__ me; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; TYPE_2__ gfx; scalar_t__ in_gpu_reset; int /*<<< orphan*/  in_suspend; } ;

/* Variables and functions */
 size_t AMDGPU_MAX_GFX_RINGS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct v10_gfx_mqd*,struct v10_gfx_mqd*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	struct v10_gfx_mqd *mqd = ring->mqd_ptr;

	if (!adev->in_gpu_reset && !adev->in_suspend) {
		FUNC4((void *)mqd, 0, sizeof(*mqd));
		FUNC5(&adev->srbm_mutex);
		FUNC7(adev, ring->me, ring->pipe, ring->queue, 0);
		FUNC1(ring);
#ifdef BRING_UP_DEBUG
		gfx_v10_0_gfx_queue_init_register(ring);
#endif
		FUNC7(adev, 0, 0, 0, 0);
		FUNC6(&adev->srbm_mutex);
		if (adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS])
			FUNC3(adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS], mqd, sizeof(*mqd));
	} else if (adev->in_gpu_reset) {
		/* reset mqd with the backup copy */
		if (adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS])
			FUNC3(mqd, adev->gfx.me.mqd_backup[AMDGPU_MAX_GFX_RINGS], sizeof(*mqd));
		/* reset the ring */
		ring->wptr = 0;
		FUNC0(ring);
#ifdef BRING_UP_DEBUG
		mutex_lock(&adev->srbm_mutex);
		nv_grbm_select(adev, ring->me, ring->pipe, ring->queue, 0);
		gfx_v10_0_gfx_queue_init_register(ring);
		nv_grbm_select(adev, 0, 0, 0, 0);
		mutex_unlock(&adev->srbm_mutex);
#endif
	} else {
		FUNC0(ring);
	}

	return 0;
}