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
struct radeon_bo {int dummy; } ;
struct drm_crtc {TYPE_2__* primary; } ;
struct TYPE_4__ {TYPE_1__* fb; } ;
struct TYPE_3__ {int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 struct radeon_bo* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc)
{
	FUNC5(crtc, DRM_MODE_DPMS_OFF);
	if (crtc->primary->fb) {
		int r;
		struct radeon_bo *rbo;

		rbo = FUNC1(crtc->primary->fb->obj[0]);
		r = FUNC2(rbo, false);
		if (FUNC6(r))
			FUNC0("failed to reserve rbo before unpin\n");
		else {
			FUNC3(rbo);
			FUNC4(rbo);
		}
	}
}