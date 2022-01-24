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
struct intel_uncore {int dummy; } ;
struct intel_gt {int pm_imr; struct intel_uncore* uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_MASK ; 
 int /*<<< orphan*/  GEN6_PMIMR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct intel_gt *gt)
{
	struct drm_i915_private *i915 = gt->i915;
	struct intel_uncore *uncore = gt->uncore;
	u32 mask = gt->pm_imr;
	i915_reg_t reg;

	if (FUNC1(i915) >= 11) {
		reg = GEN11_GPM_WGBOXPERF_INTR_MASK;
		mask <<= 16; /* pm is in upper half */
	} else if (FUNC1(i915) >= 8) {
		reg = FUNC0(2);
	} else {
		reg = GEN6_PMIMR;
	}

	FUNC2(uncore, reg, mask);
}