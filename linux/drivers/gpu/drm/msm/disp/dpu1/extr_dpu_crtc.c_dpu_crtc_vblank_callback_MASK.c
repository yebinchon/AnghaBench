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
struct drm_crtc {int dummy; } ;
struct dpu_crtc {int /*<<< orphan*/  vblank_cb_count; int /*<<< orphan*/  vblank_cb_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dpu_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct drm_crtc *crtc)
{
	struct dpu_crtc *dpu_crtc = FUNC6(crtc);

	/* keep statistics on vblank callback - with auto reset via debugfs */
	if (FUNC3(dpu_crtc->vblank_cb_time, FUNC5(0, 0)) == 0)
		dpu_crtc->vblank_cb_time = FUNC4();
	else
		dpu_crtc->vblank_cb_count++;
	FUNC1(crtc);
	FUNC2(crtc);
	FUNC7(FUNC0(crtc));
}