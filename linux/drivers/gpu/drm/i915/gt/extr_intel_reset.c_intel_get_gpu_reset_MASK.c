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
typedef  int /*<<< orphan*/ * reset_func ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/ * g33_do_reset ; 
 int /*<<< orphan*/ * g4x_do_reset ; 
 int /*<<< orphan*/ * gen6_reset_engines ; 
 int /*<<< orphan*/ * gen8_reset_engines ; 
 int /*<<< orphan*/ * i915_do_reset ; 
 int /*<<< orphan*/ * ironlake_do_reset ; 

__attribute__((used)) static reset_func FUNC4(struct drm_i915_private *i915)
{
	if (FUNC0(i915) >= 8)
		return gen8_reset_engines;
	else if (FUNC0(i915) >= 6)
		return gen6_reset_engines;
	else if (FUNC0(i915) >= 5)
		return ironlake_do_reset;
	else if (FUNC2(i915))
		return g4x_do_reset;
	else if (FUNC1(i915) || FUNC3(i915))
		return g33_do_reset;
	else if (FUNC0(i915) >= 3)
		return i915_do_reset;
	else
		return NULL;
}