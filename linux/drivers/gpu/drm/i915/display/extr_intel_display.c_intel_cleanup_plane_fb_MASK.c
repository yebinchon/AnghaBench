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
struct intel_atomic_state {int rps_interactive; } ;
struct drm_plane_state {int /*<<< orphan*/  state; } ;
struct drm_plane {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_atomic_state* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_plane_state*) ; 

void
FUNC7(struct drm_plane *plane,
		       struct drm_plane_state *old_state)
{
	struct intel_atomic_state *intel_state =
		FUNC5(old_state->state);
	struct drm_i915_private *dev_priv = FUNC4(plane->dev);

	if (intel_state->rps_interactive) {
		FUNC1(dev_priv, false);
		intel_state->rps_interactive = false;
	}

	/* Should only be called after a successful intel_prepare_plane_fb()! */
	FUNC2(&dev_priv->drm.struct_mutex);
	FUNC0(FUNC6(old_state));
	FUNC3(&dev_priv->drm.struct_mutex);
}