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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct drm_i915_private {int dummy; } ;
typedef  enum intel_sbi_destination { ____Placeholder_intel_sbi_destination } intel_sbi_destination ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

void FUNC1(struct drm_i915_private *i915, u16 reg, u32 value,
		     enum intel_sbi_destination destination)
{
	FUNC0(i915, reg, destination, &value, false);
}