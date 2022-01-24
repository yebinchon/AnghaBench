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
struct i915_ppgtt {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 struct i915_ppgtt* FUNC1 (struct drm_i915_private*) ; 
 struct i915_ppgtt* FUNC2 (struct drm_i915_private*) ; 

__attribute__((used)) static struct i915_ppgtt *
FUNC3(struct drm_i915_private *i915)
{
	if (FUNC0(i915) < 8)
		return FUNC1(i915);
	else
		return FUNC2(i915);
}