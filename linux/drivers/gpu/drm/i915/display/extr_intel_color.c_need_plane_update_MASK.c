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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {scalar_t__ id; TYPE_1__ base; } ;
struct intel_crtc_state {int active_planes; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ PLANE_PRIMARY ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct intel_plane *plane,
			      const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC2(plane->base.dev);

	/*
	 * On pre-SKL the pipe gamma enable and pipe csc enable for
	 * the pipe bottom color are configured via the primary plane.
	 * We have to reconfigure that even if the plane is inactive.
	 */
	return crtc_state->active_planes & FUNC0(plane->id) ||
		(FUNC1(dev_priv) < 9 &&
		 plane->id == PLANE_PRIMARY);
}