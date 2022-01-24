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
struct amdgpu_flip_work {struct amdgpu_flip_work* shared; int /*<<< orphan*/  old_abo; scalar_t__ event; } ;
struct TYPE_3__ {unsigned int num_crtc; struct amdgpu_crtc** crtcs; } ;
struct amdgpu_device {TYPE_2__* ddev; TYPE_1__ mode_info; } ;
struct amdgpu_crtc {scalar_t__ pflip_status; int /*<<< orphan*/  base; struct amdgpu_flip_work* pflip_works; } ;
struct TYPE_4__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FLIP_NONE ; 
 scalar_t__ AMDGPU_FLIP_SUBMITTED ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_flip_work*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev,
				unsigned crtc_id)
{
	unsigned long flags;
	struct amdgpu_crtc *amdgpu_crtc;
	struct amdgpu_flip_work *works;

	amdgpu_crtc = adev->mode_info.crtcs[crtc_id];

	if (crtc_id >= adev->mode_info.num_crtc) {
		FUNC1("invalid pageflip crtc %d\n", crtc_id);
		return -EINVAL;
	}

	/* IRQ could occur when in initial stage */
	if (amdgpu_crtc == NULL)
		return 0;

	FUNC6(&adev->ddev->event_lock, flags);
	works = amdgpu_crtc->pflip_works;
	if (amdgpu_crtc->pflip_status != AMDGPU_FLIP_SUBMITTED) {
		FUNC0("amdgpu_crtc->pflip_status = %d != "
			"AMDGPU_FLIP_SUBMITTED(%d)\n",
			amdgpu_crtc->pflip_status,
			AMDGPU_FLIP_SUBMITTED);
		FUNC7(&adev->ddev->event_lock, flags);
		return 0;
	}

	/* page flip completed. clean up */
	amdgpu_crtc->pflip_status = AMDGPU_FLIP_NONE;
	amdgpu_crtc->pflip_works = NULL;

	/* wakeup usersapce */
	if (works->event)
		FUNC3(&amdgpu_crtc->base, works->event);

	FUNC7(&adev->ddev->event_lock, flags);

	FUNC4(&amdgpu_crtc->base);
	FUNC2(&works->old_abo);
	FUNC5(works->shared);
	FUNC5(works);

	return 0;
}