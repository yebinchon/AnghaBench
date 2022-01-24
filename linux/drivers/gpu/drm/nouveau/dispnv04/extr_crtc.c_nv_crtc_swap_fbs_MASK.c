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
struct nv04_display {scalar_t__* image; } ;
struct nouveau_framebuffer {int /*<<< orphan*/  nvbo; } ;
struct nouveau_crtc {size_t index; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {TYPE_1__* primary; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct nouveau_crtc* FUNC3 (struct drm_crtc*) ; 
 struct nouveau_framebuffer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct nv04_display* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct drm_crtc *crtc, struct drm_framebuffer *old_fb)
{
	struct nv04_display *disp = FUNC5(crtc->dev);
	struct nouveau_framebuffer *nvfb = FUNC4(crtc->primary->fb);
	struct nouveau_crtc *nv_crtc = FUNC3(crtc);
	int ret;

	ret = FUNC0(nvfb->nvbo, TTM_PL_FLAG_VRAM, false);
	if (ret == 0) {
		if (disp->image[nv_crtc->index])
			FUNC2(disp->image[nv_crtc->index]);
		FUNC1(nvfb->nvbo, &disp->image[nv_crtc->index]);
	}

	return ret;
}