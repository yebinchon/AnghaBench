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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {int usec_timeout; TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; scalar_t__ crtc_id; } ;

/* Variables and functions */
 scalar_t__ AVIVO_D1GRPH_FLIP_CONTROL ; 
 int AVIVO_D1GRPH_SURFACE_UPDATE_H_RETRACE_EN ; 
 int AVIVO_D1GRPH_SURFACE_UPDATE_PENDING ; 
 scalar_t__ AVIVO_D1GRPH_UPDATE ; 
 int AVIVO_D1GRPH_UPDATE_LOCK ; 
 scalar_t__ D1GRPH_PRIMARY_SURFACE_ADDRESS ; 
 scalar_t__ D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ D1GRPH_SECONDARY_SURFACE_ADDRESS ; 
 scalar_t__ D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 

void FUNC5(struct radeon_device *rdev, int crtc_id, u64 crtc_base, bool async)
{
	struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
	u32 tmp = FUNC1(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset);
	int i;

	/* Lock the graphics update lock */
	tmp |= AVIVO_D1GRPH_UPDATE_LOCK;
	FUNC2(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);

	/* update the scanout addresses */
	FUNC2(AVIVO_D1GRPH_FLIP_CONTROL + radeon_crtc->crtc_offset,
	       async ? AVIVO_D1GRPH_SURFACE_UPDATE_H_RETRACE_EN : 0);
	if (radeon_crtc->crtc_id) {
		FUNC2(D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, FUNC4(crtc_base));
		FUNC2(D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, FUNC4(crtc_base));
	} else {
		FUNC2(D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, FUNC4(crtc_base));
		FUNC2(D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, FUNC4(crtc_base));
	}
	FUNC2(D1GRPH_SECONDARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32)crtc_base);
	FUNC2(D1GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32)crtc_base);

	/* Wait for update_pending to go high. */
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC1(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset) & AVIVO_D1GRPH_SURFACE_UPDATE_PENDING)
			break;
		FUNC3(1);
	}
	FUNC0("Update pending now high. Unlocking vupdate_lock.\n");

	/* Unlock the lock, so double-buffering can take place inside vblank */
	tmp &= ~AVIVO_D1GRPH_UPDATE_LOCK;
	FUNC2(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);
}