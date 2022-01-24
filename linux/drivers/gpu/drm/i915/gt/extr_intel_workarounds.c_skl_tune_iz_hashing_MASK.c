#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * subslice_7eu; } ;
struct TYPE_4__ {TYPE_1__ sseu; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN7_GT_MODE ; 
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int) ; 
 TYPE_2__* FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_engine_cs *engine,
				struct i915_wa_list *wal)
{
	struct drm_i915_private *i915 = engine->i915;
	u8 vals[3] = { 0, 0, 0 };
	unsigned int i;

	for (i = 0; i < 3; i++) {
		u8 ss;

		/*
		 * Only consider slices where one, and only one, subslice has 7
		 * EUs
		 */
		if (!FUNC5(FUNC2(i915)->sseu.subslice_7eu[i]))
			continue;

		/*
		 * subslice_7eu[i] != 0 (because of the check above) and
		 * ss_max == 4 (maximum number of subslices possible per slice)
		 *
		 * ->    0 <= ss <= 3;
		 */
		ss = FUNC4(FUNC2(i915)->sseu.subslice_7eu[i]) - 1;
		vals[i] = 3 - ss;
	}

	if (vals[0] == 0 && vals[1] == 0 && vals[2] == 0)
		return;

	/* Tune IZ hashing. See intel_device_info_runtime_init() */
	FUNC3(GEN7_GT_MODE,
			    FUNC1(2) |
			    FUNC1(1) |
			    FUNC1(0),
			    FUNC0(2, vals[2]) |
			    FUNC0(1, vals[1]) |
			    FUNC0(0, vals[0]));
}