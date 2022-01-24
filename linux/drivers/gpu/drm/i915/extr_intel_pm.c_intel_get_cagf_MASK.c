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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int GEN6_CAGF_MASK ; 
 int GEN6_CAGF_SHIFT ; 
 int GEN9_CAGF_MASK ; 
 int GEN9_CAGF_SHIFT ; 
 int HSW_CAGF_MASK ; 
 int HSW_CAGF_SHIFT ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 

u32 FUNC3(struct drm_i915_private *dev_priv, u32 rpstat)
{
	u32 cagf;

	if (FUNC0(dev_priv) >= 9)
		cagf = (rpstat & GEN9_CAGF_MASK) >> GEN9_CAGF_SHIFT;
	else if (FUNC2(dev_priv) || FUNC1(dev_priv))
		cagf = (rpstat & HSW_CAGF_MASK) >> HSW_CAGF_SHIFT;
	else
		cagf = (rpstat & GEN6_CAGF_MASK) >> GEN6_CAGF_SHIFT;

	return  cagf;
}