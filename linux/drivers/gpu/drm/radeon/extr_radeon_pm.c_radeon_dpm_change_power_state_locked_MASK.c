#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct radeon_ring {scalar_t__ ready; } ;
struct radeon_ps {scalar_t__ vce_active; } ;
struct TYPE_7__ {scalar_t__ user_state; scalar_t__ state; scalar_t__ vce_active; int single_display; scalar_t__ new_active_crtcs; scalar_t__ current_active_crtcs; int current_active_crtc_count; int new_active_crtc_count; int forced_level; scalar_t__ thermal_active; struct radeon_ps* requested_ps; struct radeon_ps* current_ps; int /*<<< orphan*/  uvd_active; } ;
struct TYPE_8__ {int /*<<< orphan*/  mclk_lock; TYPE_3__ dpm; int /*<<< orphan*/  dpm_enabled; } ;
struct radeon_device {scalar_t__ family; int flags; TYPE_4__ pm; int /*<<< orphan*/  ring_lock; TYPE_2__* asic; struct radeon_ring* ring; } ;
typedef  enum radeon_pm_state_type { ____Placeholder_radeon_pm_state_type } radeon_pm_state_type ;
typedef  enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;
struct TYPE_5__ {scalar_t__ force_performance_level; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;

/* Variables and functions */
 scalar_t__ CHIP_BARTS ; 
 int RADEON_DPM_FORCED_LEVEL_LOW ; 
 int RADEON_IS_IGP ; 
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int radeon_dpm ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 struct radeon_ps* FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct radeon_device *rdev)
{
	int i;
	struct radeon_ps *ps;
	enum radeon_pm_state_type dpm_state;
	int ret;
	bool single_display = FUNC12(rdev);

	/* if dpm init failed */
	if (!rdev->pm.dpm_enabled)
		return;

	if (rdev->pm.dpm.user_state != rdev->pm.dpm.state) {
		/* add other state override checks here */
		if ((!rdev->pm.dpm.thermal_active) &&
		    (!rdev->pm.dpm.uvd_active))
			rdev->pm.dpm.state = rdev->pm.dpm.user_state;
	}
	dpm_state = rdev->pm.dpm.state;

	ps = FUNC7(rdev, dpm_state);
	if (ps)
		rdev->pm.dpm.requested_ps = ps;
	else
		return;

	/* no need to reprogram if nothing changed unless we are on BTC+ */
	if (rdev->pm.dpm.current_ps == rdev->pm.dpm.requested_ps) {
		/* vce just modifies an existing state so force a change */
		if (ps->vce_active != rdev->pm.dpm.vce_active)
			goto force;
		/* user has made a display change (such as timing) */
		if (rdev->pm.dpm.single_display != single_display)
			goto force;
		if ((rdev->family < CHIP_BARTS) || (rdev->flags & RADEON_IS_IGP)) {
			/* for pre-BTC and APUs if the num crtcs changed but state is the same,
			 * all we need to do is update the display configuration.
			 */
			if (rdev->pm.dpm.new_active_crtcs != rdev->pm.dpm.current_active_crtcs) {
				/* update display watermarks based on new power state */
				FUNC4(rdev);
				/* update displays */
				FUNC5(rdev);
				rdev->pm.dpm.current_active_crtcs = rdev->pm.dpm.new_active_crtcs;
				rdev->pm.dpm.current_active_crtc_count = rdev->pm.dpm.new_active_crtc_count;
			}
			return;
		} else {
			/* for BTC+ if the num crtcs hasn't changed and state is the same,
			 * nothing to do, if the num crtcs is > 1 and state is the same,
			 * update display configuration.
			 */
			if (rdev->pm.dpm.new_active_crtcs ==
			    rdev->pm.dpm.current_active_crtcs) {
				return;
			} else {
				if ((rdev->pm.dpm.current_active_crtc_count > 1) &&
				    (rdev->pm.dpm.new_active_crtc_count > 1)) {
					/* update display watermarks based on new power state */
					FUNC4(rdev);
					/* update displays */
					FUNC5(rdev);
					rdev->pm.dpm.current_active_crtcs = rdev->pm.dpm.new_active_crtcs;
					rdev->pm.dpm.current_active_crtc_count = rdev->pm.dpm.new_active_crtc_count;
					return;
				}
			}
		}
	}

force:
	if (radeon_dpm == 1) {
		FUNC3("switching from power state:\n");
		FUNC10(rdev, rdev->pm.dpm.current_ps);
		FUNC3("switching to power state:\n");
		FUNC10(rdev, rdev->pm.dpm.requested_ps);
	}

	FUNC0(&rdev->pm.mclk_lock);
	FUNC1(&rdev->ring_lock);

	/* update whether vce is active */
	ps->vce_active = rdev->pm.dpm.vce_active;

	ret = FUNC9(rdev);
	if (ret)
		goto done;

	/* update display watermarks based on new power state */
	FUNC4(rdev);
	/* update displays */
	FUNC5(rdev);

	/* wait for the rings to drain */
	for (i = 0; i < RADEON_NUM_RINGS; i++) {
		struct radeon_ring *ring = &rdev->ring[i];
		if (ring->ready)
			FUNC13(rdev, i);
	}

	/* program the new power state */
	FUNC11(rdev);

	/* update current power state */
	rdev->pm.dpm.current_ps = rdev->pm.dpm.requested_ps;

	FUNC8(rdev);

	rdev->pm.dpm.current_active_crtcs = rdev->pm.dpm.new_active_crtcs;
	rdev->pm.dpm.current_active_crtc_count = rdev->pm.dpm.new_active_crtc_count;
	rdev->pm.dpm.single_display = single_display;

	if (rdev->asic->dpm.force_performance_level) {
		if (rdev->pm.dpm.thermal_active) {
			enum radeon_dpm_forced_level level = rdev->pm.dpm.forced_level;
			/* force low perf level for thermal */
			FUNC6(rdev, RADEON_DPM_FORCED_LEVEL_LOW);
			/* save the user's level */
			rdev->pm.dpm.forced_level = level;
		} else {
			/* otherwise, user selected level */
			FUNC6(rdev, rdev->pm.dpm.forced_level);
		}
	}

done:
	FUNC2(&rdev->ring_lock);
	FUNC14(&rdev->pm.mclk_lock);
}