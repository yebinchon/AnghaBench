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
struct drm_i915_private {int dummy; } ;
typedef  enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int PLANE_A ; 
 int PLANE_B ; 
 int PLANE_C ; 

__attribute__((used)) static bool FUNC5(struct drm_i915_private *dev_priv,
			       enum i9xx_plane_id i9xx_plane)
{
	if (!FUNC0(dev_priv))
		return false;

	if (FUNC2(dev_priv) || FUNC3(dev_priv))
		return i9xx_plane == PLANE_A; /* tied to pipe A */
	else if (FUNC4(dev_priv))
		return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B ||
			i9xx_plane == PLANE_C;
	else if (FUNC1(dev_priv) >= 4)
		return i9xx_plane == PLANE_A || i9xx_plane == PLANE_B;
	else
		return i9xx_plane == PLANE_A;
}