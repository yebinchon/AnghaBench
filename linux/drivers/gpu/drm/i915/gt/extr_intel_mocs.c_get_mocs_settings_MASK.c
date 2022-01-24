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
struct intel_gt {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_mocs_table {int size; TYPE_1__* table; void* n_entries; } ;
struct TYPE_2__ {int l3cc_value; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* GEN11_NUM_MOCS_ENTRIES ; 
 void* GEN9_NUM_MOCS_ENTRIES ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 void* broxton_mocs_table ; 
 void* icelake_mocs_table ; 
 void* skylake_mocs_table ; 
 void* tigerlake_mocs_table ; 

__attribute__((used)) static bool FUNC10(struct intel_gt *gt,
			      struct drm_i915_mocs_table *table)
{
	struct drm_i915_private *i915 = gt->i915;
	bool result = false;

	if (FUNC1(i915) >= 12) {
		table->size  = FUNC0(tigerlake_mocs_table);
		table->table = tigerlake_mocs_table;
		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
		result = true;
	} else if (FUNC3(i915, 11)) {
		table->size  = FUNC0(icelake_mocs_table);
		table->table = icelake_mocs_table;
		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
		result = true;
	} else if (FUNC4(i915) || FUNC2(i915)) {
		table->size  = FUNC0(skylake_mocs_table);
		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
		table->table = skylake_mocs_table;
		result = true;
	} else if (FUNC5(i915)) {
		table->size  = FUNC0(broxton_mocs_table);
		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
		table->table = broxton_mocs_table;
		result = true;
	} else {
		FUNC9(FUNC1(i915) >= 9,
			  "Platform that should have a MOCS table does not.\n");
	}

	/* WaDisableSkipCaching:skl,bxt,kbl,glk */
	if (FUNC3(i915, 9)) {
		int i;

		for (i = 0; i < table->size; i++)
			if (FUNC8(table->table[i].l3cc_value &
				    (FUNC6(1) | FUNC7(0x7))))
				return false;
	}

	return result;
}