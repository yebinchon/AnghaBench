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
struct TYPE_4__ {scalar_t__ visible; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; struct drm_framebuffer* fb; } ;
struct intel_plane_state {int /*<<< orphan*/  ctl; TYPE_1__* color_plane; TYPE_2__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_framebuffer {int* pitches; } ;
struct TYPE_3__ {int stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_plane_state*) ; 
 int FUNC5 (struct intel_crtc_state*,struct intel_plane_state*) ; 

__attribute__((used)) static int FUNC6(struct intel_crtc_state *crtc_state,
			     struct intel_plane_state *plane_state)
{
	const struct drm_framebuffer *fb = plane_state->base.fb;
	int ret;

	ret = FUNC5(crtc_state, plane_state);
	if (ret)
		return ret;

	/* if we want to turn off the cursor ignore width and height */
	if (!fb)
		return 0;

	/* Check for which cursor types we support */
	if (!FUNC4(plane_state)) {
		FUNC0("Cursor dimension %dx%d not supported\n",
			  plane_state->base.crtc_w,
			  plane_state->base.crtc_h);
		return -EINVAL;
	}

	FUNC2(plane_state->base.visible &&
		plane_state->color_plane[0].stride != fb->pitches[0]);

	switch (fb->pitches[0]) {
	case 256:
	case 512:
	case 1024:
	case 2048:
		break;
	default:
		FUNC1("Invalid cursor stride (%u)\n",
			      fb->pitches[0]);
		return -EINVAL;
	}

	plane_state->ctl = FUNC3(crtc_state, plane_state);

	return 0;
}