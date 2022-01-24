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
struct ilk_wm_maximums {int /*<<< orphan*/  fbc; int /*<<< orphan*/  cur; void* spr; void* pri; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private const*) ; 
 void* FUNC2 (struct drm_i915_private const*,int,int) ; 

__attribute__((used)) static void FUNC3(const struct drm_i915_private *dev_priv,
					int level,
					struct ilk_wm_maximums *max)
{
	max->pri = FUNC2(dev_priv, level, false);
	max->spr = FUNC2(dev_priv, level, true);
	max->cur = FUNC0(dev_priv, level);
	max->fbc = FUNC1(dev_priv);
}