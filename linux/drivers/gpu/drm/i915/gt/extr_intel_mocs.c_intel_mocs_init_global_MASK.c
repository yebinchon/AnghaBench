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
struct intel_uncore {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  i915; struct intel_uncore* uncore; } ;
struct drm_i915_mocs_table {unsigned int size; unsigned int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gt*,struct drm_i915_mocs_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_gt *gt)
{
	struct intel_uncore *uncore = gt->uncore;
	struct drm_i915_mocs_table table;
	unsigned int index;

	FUNC0(!FUNC3(gt->i915));

	if (!FUNC4(gt, &table))
		return;

	if (FUNC1(table.size > table.n_entries))
		return;

	for (index = 0; index < table.size; index++)
		FUNC5(uncore,
				   FUNC2(index),
				   table.table[index].control_value);

	/*
	 * Ok, now set the unused entries to the invalid entry (index 0). These
	 * entries are officially undefined and no contract for the contents and
	 * settings is given for these entries.
	 */
	for (; index < table.n_entries; index++)
		FUNC5(uncore,
				   FUNC2(index),
				   table.table[0].control_value);
}