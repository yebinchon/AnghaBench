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
struct drm_i915_private {struct drm_atomic_state* modeset_restore_state; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct drm_atomic_state*) ; 
 struct drm_atomic_state* FUNC2 (struct drm_device*) ; 
 struct drm_i915_private* FUNC3 (struct drm_device*) ; 

int FUNC4(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC3(dev);
	struct drm_atomic_state *state;
	int ret;

	state = FUNC2(dev);
	ret = FUNC1(state);
	if (ret)
		FUNC0("Suspending crtc's failed with %i\n", ret);
	else
		dev_priv->modeset_restore_state = state;
	return ret;
}