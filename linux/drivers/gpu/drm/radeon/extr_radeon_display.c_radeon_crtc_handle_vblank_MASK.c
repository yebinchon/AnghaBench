#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_3__* ddev; TYPE_2__ mode_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  hwmode; } ;
struct radeon_crtc {scalar_t__ flip_status; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int DRM_SCANOUTPOS_VALID ; 
 int /*<<< orphan*/  GET_DISTANCE_TO_VBLANKSTART ; 
 scalar_t__ RADEON_FLIP_SUBMITTED ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct radeon_device*,int) ; 
 int radeon_use_pflipirq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct radeon_device *rdev, int crtc_id)
{
	struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
	unsigned long flags;
	u32 update_pending;
	int vpos, hpos;

	/* can happen during initialization */
	if (radeon_crtc == NULL)
		return;

	/* Skip the pageflip completion check below (based on polling) on
	 * asics which reliably support hw pageflip completion irqs. pflip
	 * irqs are a reliable and race-free method of handling pageflip
	 * completion detection. A use_pflipirq module parameter < 2 allows
	 * to override this in case of asics with faulty pflip irqs.
	 * A module parameter of 0 would only use this polling based path,
	 * a parameter of 1 would use pflip irq only as a backup to this
	 * path, as in Linux 3.16.
	 */
	if ((radeon_use_pflipirq == 2) && FUNC1(rdev))
		return;

	FUNC6(&rdev->ddev->event_lock, flags);
	if (radeon_crtc->flip_status != RADEON_FLIP_SUBMITTED) {
		FUNC2("radeon_crtc->flip_status = %d != "
				 "RADEON_FLIP_SUBMITTED(%d)\n",
				 radeon_crtc->flip_status,
				 RADEON_FLIP_SUBMITTED);
		FUNC7(&rdev->ddev->event_lock, flags);
		return;
	}

	update_pending = FUNC5(rdev, crtc_id);

	/* Has the pageflip already completed in crtc, or is it certain
	 * to complete in this vblank? GET_DISTANCE_TO_VBLANKSTART provides
	 * distance to start of "fudged earlier" vblank in vpos, distance to
	 * start of real vblank in hpos. vpos >= 0 && hpos < 0 means we are in
	 * the last few scanlines before start of real vblank, where the vblank
	 * irq can fire, so we have sampled update_pending a bit too early and
	 * know the flip will complete at leading edge of the upcoming real
	 * vblank. On pre-AVIVO hardware, flips also complete inside the real
	 * vblank, not only at leading edge, so if update_pending for hpos >= 0
	 *  == inside real vblank, the flip will complete almost immediately.
	 * Note that this method of completion handling is still not 100% race
	 * free, as we could execute before the radeon_flip_work_func managed
	 * to run and set the RADEON_FLIP_SUBMITTED status, thereby we no-op,
	 * but the flip still gets programmed into hw and completed during
	 * vblank, leading to a delayed emission of the flip completion event.
	 * This applies at least to pre-AVIVO hardware, where flips are always
	 * completing inside vblank, not only at leading edge of vblank.
	 */
	if (update_pending &&
	    (DRM_SCANOUTPOS_VALID &
	     FUNC4(rdev->ddev, crtc_id,
					GET_DISTANCE_TO_VBLANKSTART,
					&vpos, &hpos, NULL, NULL,
					&rdev->mode_info.crtcs[crtc_id]->base.hwmode)) &&
	    ((vpos >= 0 && hpos < 0) || (hpos >= 0 && !FUNC0(rdev)))) {
		/* crtc didn't flip in this target vblank interval,
		 * but flip is pending in crtc. Based on the current
		 * scanout position we know that the current frame is
		 * (nearly) complete and the flip will (likely)
		 * complete before the start of the next frame.
		 */
		update_pending = 0;
	}
	FUNC7(&rdev->ddev->event_lock, flags);
	if (!update_pending)
		FUNC3(rdev, crtc_id);
}