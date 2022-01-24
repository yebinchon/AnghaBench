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
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {TYPE_2__* primary; scalar_t__ state; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {int /*<<< orphan*/  rotation; } ;

/* Variables and functions */
 int FUNC0 (int,int,int,int,struct drm_framebuffer const*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode const*,int*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(const struct drm_crtc *crtc,
			    int x, int y,
			    const struct drm_display_mode *mode,
			    const struct drm_framebuffer *fb)

{
	int hdisplay, vdisplay;

	FUNC1(mode, &hdisplay, &vdisplay);

	if (crtc->state &&
	    FUNC2(crtc->primary->state->rotation))
		FUNC3(hdisplay, vdisplay);

	return FUNC0(x << 16, y << 16,
						hdisplay << 16, vdisplay << 16,
						fb);
}