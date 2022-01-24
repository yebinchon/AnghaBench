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
struct intel_uncore {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {struct intel_uncore* uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;

/* Variables and functions */
 int FW_REG_READ ; 
 int FW_REG_WRITE ; 
 int FUNC0 (int) ; 
 int GEN11_MCR_SLICE_MASK ; 
 int FUNC1 (int) ; 
 int GEN11_MCR_SUBSLICE_MASK ; 
 int /*<<< orphan*/  GEN8_MCR_SELECTOR ; 
 int FUNC2 (int) ; 
 int GEN8_MCR_SLICE_MASK ; 
 int FUNC3 (int) ; 
 int GEN8_MCR_SUBSLICE_MASK ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore*,int) ; 
 int FUNC8 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32
FUNC12(struct intel_engine_cs *engine, int slice, int subslice,
		  i915_reg_t reg)
{
	struct drm_i915_private *i915 = engine->i915;
	struct intel_uncore *uncore = engine->uncore;
	u32 mcr_mask, mcr_ss, mcr, old_mcr, val;
	enum forcewake_domains fw_domains;

	if (FUNC4(i915) >= 11) {
		mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
		mcr_ss = FUNC0(slice) | FUNC1(subslice);
	} else {
		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
		mcr_ss = FUNC2(slice) | FUNC3(subslice);
	}

	fw_domains = FUNC5(uncore, reg,
						    FW_REG_READ);
	fw_domains |= FUNC5(uncore,
						     GEN8_MCR_SELECTOR,
						     FW_REG_READ | FW_REG_WRITE);

	FUNC10(&uncore->lock);
	FUNC6(uncore, fw_domains);

	old_mcr = mcr = FUNC8(uncore, GEN8_MCR_SELECTOR);

	mcr &= ~mcr_mask;
	mcr |= mcr_ss;
	FUNC9(uncore, GEN8_MCR_SELECTOR, mcr);

	val = FUNC8(uncore, reg);

	mcr &= ~mcr_mask;
	mcr |= old_mcr & mcr_mask;

	FUNC9(uncore, GEN8_MCR_SELECTOR, mcr);

	FUNC7(uncore, fw_domains);
	FUNC11(&uncore->lock);

	return val;
}