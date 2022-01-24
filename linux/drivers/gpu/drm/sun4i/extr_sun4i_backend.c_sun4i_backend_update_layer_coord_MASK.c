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
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  crtc_x; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; } ;
struct drm_plane {scalar_t__ type; struct drm_plane_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_BACKEND_DISSIZE_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct sun4i_backend *backend,
				     int layer, struct drm_plane *plane)
{
	struct drm_plane_state *state = plane->state;

	FUNC0("Updating layer %d\n", layer);

	if (plane->type == DRM_PLANE_TYPE_PRIMARY) {
		FUNC0("Primary layer, updating global size W: %u H: %u\n",
				 state->crtc_w, state->crtc_h);
		FUNC6(backend->engine.regs, SUN4I_BACKEND_DISSIZE_REG,
			     FUNC1(state->crtc_w,
						   state->crtc_h));
	}

	/* Set height and width */
	FUNC0("Layer size W: %u H: %u\n",
			 state->crtc_w, state->crtc_h);
	FUNC6(backend->engine.regs, FUNC5(layer),
		     FUNC4(state->crtc_w,
					   state->crtc_h));

	/* Set base coordinates */
	FUNC0("Layer coordinates X: %d Y: %d\n",
			 state->crtc_x, state->crtc_y);
	FUNC6(backend->engine.regs, FUNC3(layer),
		     FUNC2(state->crtc_x,
					   state->crtc_y));

	return 0;
}