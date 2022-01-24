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
struct intel_plane {int i9xx_plane; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int PLANE_B ; 
 int PLANE_C ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct intel_plane *plane)
{
	struct drm_i915_private *dev_priv = FUNC4(plane->base.dev);
	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;

	if (FUNC1(dev_priv))
		return i9xx_plane == PLANE_B;
	else if (FUNC0(dev_priv) >= 5 || FUNC2(dev_priv))
		return false;
	else if (FUNC3(dev_priv, 4))
		return i9xx_plane == PLANE_C;
	else
		return i9xx_plane == PLANE_B ||
			i9xx_plane == PLANE_C;
}