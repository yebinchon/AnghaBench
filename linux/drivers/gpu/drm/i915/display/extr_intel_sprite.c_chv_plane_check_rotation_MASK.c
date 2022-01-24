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
struct TYPE_4__ {unsigned int rotation; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int DRM_MODE_REFLECT_X ; 
 unsigned int DRM_MODE_ROTATE_180 ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC3(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC2(plane->base.dev);
	unsigned int rotation = plane_state->base.rotation;

	/* CHV ignores the mirror bit when the rotate bit is set :( */
	if (FUNC1(dev_priv) &&
	    rotation & DRM_MODE_ROTATE_180 &&
	    rotation & DRM_MODE_REFLECT_X) {
		FUNC0("Cannot rotate and reflect at the same time\n");
		return -EINVAL;
	}

	return 0;
}