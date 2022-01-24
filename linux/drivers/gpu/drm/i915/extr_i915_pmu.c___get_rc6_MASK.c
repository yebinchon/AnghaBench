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
typedef  scalar_t__ u64 ;
struct intel_gt {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_GT_GFX_RC6 ; 
 int /*<<< orphan*/  GEN6_GT_GFX_RC6p ; 
 int /*<<< orphan*/  GEN6_GT_GFX_RC6pp ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  VLV_GT_RENDER_RC6 ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC4(struct intel_gt *gt)
{
	struct drm_i915_private *i915 = gt->i915;
	u64 val;

	val = FUNC3(i915,
				     FUNC2(i915) ?
				     VLV_GT_RENDER_RC6 :
				     GEN6_GT_GFX_RC6);

	if (FUNC0(i915))
		val += FUNC3(i915, GEN6_GT_GFX_RC6p);

	if (FUNC1(i915))
		val += FUNC3(i915, GEN6_GT_GFX_RC6pp);

	return val;
}