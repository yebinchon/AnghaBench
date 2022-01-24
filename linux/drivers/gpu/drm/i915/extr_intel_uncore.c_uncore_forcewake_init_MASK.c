#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct intel_uncore {TYPE_1__ pmic_bus_access_nb; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  __chv_fw_ranges ; 
 int /*<<< orphan*/  __gen11_fw_ranges ; 
 int /*<<< orphan*/  __gen9_fw_ranges ; 
 int /*<<< orphan*/  __vlv_fw_ranges ; 
 int /*<<< orphan*/  FUNC8 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwtable ; 
 int /*<<< orphan*/  gen11_fwtable ; 
 int /*<<< orphan*/  gen6 ; 
 int /*<<< orphan*/  gen8 ; 
 int /*<<< orphan*/  i915_pmic_bus_access_notifier ; 
 int FUNC9 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct intel_uncore *uncore)
{
	struct drm_i915_private *i915 = uncore->i915;
	int ret;

	FUNC3(!FUNC10(uncore));

	ret = FUNC9(uncore);
	if (ret)
		return ret;
	FUNC8(uncore, 0);

	if (FUNC6(i915, 6, 7)) {
		FUNC2(uncore, gen6);

		if (FUNC7(i915)) {
			FUNC0(uncore, __vlv_fw_ranges);
			FUNC1(uncore, fwtable);
		} else {
			FUNC1(uncore, gen6);
		}
	} else if (FUNC5(i915, 8)) {
		if (FUNC4(i915)) {
			FUNC0(uncore, __chv_fw_ranges);
			FUNC2(uncore, fwtable);
			FUNC1(uncore, fwtable);
		} else {
			FUNC2(uncore, gen8);
			FUNC1(uncore, gen6);
		}
	} else if (FUNC6(i915, 9, 10)) {
		FUNC0(uncore, __gen9_fw_ranges);
		FUNC2(uncore, fwtable);
		FUNC1(uncore, fwtable);
	} else {
		FUNC0(uncore, __gen11_fw_ranges);
		FUNC2(uncore, gen11_fwtable);
		FUNC1(uncore, gen11_fwtable);
	}

	uncore->pmic_bus_access_nb.notifier_call = i915_pmic_bus_access_notifier;
	FUNC11(&uncore->pmic_bus_access_nb);

	return 0;
}