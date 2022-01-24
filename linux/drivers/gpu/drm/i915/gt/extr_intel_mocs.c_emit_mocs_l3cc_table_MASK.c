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
typedef  int /*<<< orphan*/  u16 ;
struct i915_request {int dummy; } ;
struct drm_i915_mocs_table {int size; int n_entries; TYPE_1__* table; } ;
struct TYPE_2__ {int /*<<< orphan*/  l3cc_value; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 size_t I915_MOCS_PTE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_mocs_table const*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct i915_request*,int) ; 
 void* FUNC9 (struct drm_i915_mocs_table const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i915_request *rq,
				const struct drm_i915_mocs_table *table)
{
	u16 unused_value;
	unsigned int i;
	u32 *cs;

	if (FUNC0(table->size > table->n_entries))
		return -ENODEV;

	/* Set unused values to PTE */
	unused_value = table->table[I915_MOCS_PTE].l3cc_value;

	cs = FUNC8(rq, 2 + table->n_entries);
	if (FUNC2(cs))
		return FUNC4(cs);

	*cs++ = FUNC3(table->n_entries / 2);

	for (i = 0; i < table->size / 2; i++) {
		u16 low = FUNC5(table, 2 * i);
		u16 high = FUNC5(table, 2 * i + 1);

		*cs++ = FUNC6(FUNC1(i));
		*cs++ = FUNC9(table, low, high);
	}

	/* Odd table size - 1 left over */
	if (table->size & 0x01) {
		u16 low = FUNC5(table, 2 * i);

		*cs++ = FUNC6(FUNC1(i));
		*cs++ = FUNC9(table, low, unused_value);
		i++;
	}

	/* All remaining entries are also unused */
	for (; i < table->n_entries / 2; i++) {
		*cs++ = FUNC6(FUNC1(i));
		*cs++ = FUNC9(table, unused_value, unused_value);
	}

	*cs++ = MI_NOOP;
	FUNC7(rq, cs);

	return 0;
}