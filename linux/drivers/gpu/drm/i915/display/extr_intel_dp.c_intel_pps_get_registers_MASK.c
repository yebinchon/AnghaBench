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
struct pps_registers {int /*<<< orphan*/  pp_div; int /*<<< orphan*/  pp_off; int /*<<< orphan*/  pp_on; int /*<<< orphan*/  pp_stat; int /*<<< orphan*/  pp_ctrl; } ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INVALID_MMIO_REG ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ PCH_CNP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 (struct pps_registers*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC13(struct intel_dp *intel_dp,
				    struct pps_registers *regs)
{
	struct drm_i915_private *dev_priv = FUNC10(intel_dp);
	int pps_idx = 0;

	FUNC11(regs, 0, sizeof(*regs));

	if (FUNC2(dev_priv))
		pps_idx = FUNC9(intel_dp);
	else if (FUNC3(dev_priv) || FUNC1(dev_priv))
		pps_idx = FUNC12(intel_dp);

	regs->pp_ctrl = FUNC4(pps_idx);
	regs->pp_stat = FUNC8(pps_idx);
	regs->pp_on = FUNC7(pps_idx);
	regs->pp_off = FUNC6(pps_idx);

	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
	if (FUNC2(dev_priv) || FUNC0(dev_priv) >= PCH_CNP)
		regs->pp_div = INVALID_MMIO_REG;
	else
		regs->pp_div = FUNC5(pps_idx);
}