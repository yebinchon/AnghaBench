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
typedef  int /*<<< orphan*/  u16 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;
struct drm_i915_mocs_table {int size; int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int /*<<< orphan*/  l3cc_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 size_t I915_MOCS_PTE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_mocs_table*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*,struct drm_i915_mocs_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_mocs_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_gt *gt)
{
	struct intel_uncore *uncore = gt->uncore;
	struct drm_i915_mocs_table table;
	unsigned int i;
	u16 unused_value;

	if (!FUNC2(gt, &table))
		return;

	/* Set unused values to PTE */
	unused_value = table.table[I915_MOCS_PTE].l3cc_value;

	for (i = 0; i < table.size / 2; i++) {
		u16 low = FUNC1(&table, 2 * i);
		u16 high = FUNC1(&table, 2 * i + 1);

		FUNC3(uncore,
				   FUNC0(i),
				   FUNC4(&table, low, high));
	}

	/* Odd table size - 1 left over */
	if (table.size & 0x01) {
		u16 low = FUNC1(&table, 2 * i);

		FUNC3(uncore,
				   FUNC0(i),
				   FUNC4(&table, low, unused_value));
		i++;
	}

	/* All remaining entries are also unused */
	for (; i < table.n_entries / 2; i++)
		FUNC3(uncore,
				   FUNC0(i),
				   FUNC4(&table, unused_value,
						unused_value));
}