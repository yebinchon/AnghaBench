#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_crtc {int /*<<< orphan*/  cursor_y; int /*<<< orphan*/  cursor_x; scalar_t__ cursor_bo; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 struct radeon_crtc* FUNC3 (struct drm_crtc*) ; 

void FUNC4(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC3(crtc);

	if (radeon_crtc->cursor_bo) {
		FUNC1(crtc, true);

		FUNC0(crtc, radeon_crtc->cursor_x,
					  radeon_crtc->cursor_y);

		FUNC2(crtc);

		FUNC1(crtc, false);
	}
}