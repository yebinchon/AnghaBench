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
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ I915_TILING_NONE ; 
 scalar_t__ FUNC0 (struct drm_i915_gem_object const*) ; 

__attribute__((used)) static inline bool
FUNC1(const struct drm_i915_gem_object *obj)
{
	return FUNC0(obj) != I915_TILING_NONE;
}