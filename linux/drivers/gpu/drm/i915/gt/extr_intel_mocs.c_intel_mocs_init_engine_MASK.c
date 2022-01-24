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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  i915; struct intel_uncore* uncore; } ;
struct intel_engine_cs {int /*<<< orphan*/  id; struct intel_gt* gt; } ;
struct drm_i915_mocs_table {unsigned int size; unsigned int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t I915_MOCS_PTE ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_mocs_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gt*,struct drm_i915_mocs_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC6(struct intel_engine_cs *engine)
{
	struct intel_gt *gt = engine->gt;
	struct intel_uncore *uncore = gt->uncore;
	struct drm_i915_mocs_table table;
	unsigned int index;
	u32 unused_value;

	/* Platforms with global MOCS do not need per-engine initialization. */
	if (FUNC0(gt->i915))
		return;

	/* Called under a blanket forcewake */
	FUNC1(uncore, FORCEWAKE_ALL);

	if (!FUNC3(gt, &table))
		return;

	/* Set unused values to PTE */
	unused_value = table.table[I915_MOCS_PTE].control_value;

	for (index = 0; index < table.size; index++) {
		u32 value = FUNC2(&table, index);

		FUNC4(uncore,
				      FUNC5(engine->id, index),
				      value);
	}

	/* All remaining entries are also unused */
	for (; index < table.n_entries; index++)
		FUNC4(uncore,
				      FUNC5(engine->id, index),
				      unused_value);
}