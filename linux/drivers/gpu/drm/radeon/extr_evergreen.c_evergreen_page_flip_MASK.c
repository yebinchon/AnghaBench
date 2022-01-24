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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;

/* Variables and functions */
 scalar_t__ EVERGREEN_GRPH_FLIP_CONTROL ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct radeon_device *rdev, int crtc_id, u64 crtc_base,
			 bool async)
{
	struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];

	/* update the scanout addresses */
	FUNC1(EVERGREEN_GRPH_FLIP_CONTROL + radeon_crtc->crtc_offset,
	       async ? EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN : 0);
	FUNC1(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
	       FUNC2(crtc_base));
	FUNC1(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32)crtc_base);
	/* post the write */
	FUNC0(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset);
}