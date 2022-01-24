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
typedef  void* u32 ;
struct i915_request {TYPE_1__* engine; } ;
struct drm_i915_mocs_table {int size; int n_entries; TYPE_2__* table; } ;
typedef  enum intel_engine_id { ____Placeholder_intel_engine_id } intel_engine_id ;
struct TYPE_4__ {void* control_value; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 size_t I915_MOCS_PTE ; 
 scalar_t__ FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC3 (void**) ; 
 void* FUNC4 (struct drm_i915_mocs_table const*,unsigned int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*,void**) ; 
 void** FUNC7 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct i915_request *rq,
				   const struct drm_i915_mocs_table *table)
{
	enum intel_engine_id engine = rq->engine->id;
	unsigned int index;
	u32 unused_value;
	u32 *cs;

	if (FUNC0(table->size > table->n_entries))
		return -ENODEV;

	/* Set unused values to PTE */
	unused_value = table->table[I915_MOCS_PTE].control_value;

	cs = FUNC7(rq, 2 + 2 * table->n_entries);
	if (FUNC1(cs))
		return FUNC3(cs);

	*cs++ = FUNC2(table->n_entries);

	for (index = 0; index < table->size; index++) {
		u32 value = FUNC4(table, index);

		*cs++ = FUNC5(FUNC8(engine, index));
		*cs++ = value;
	}

	/* All remaining entries are also unused */
	for (; index < table->n_entries; index++) {
		*cs++ = FUNC5(FUNC8(engine, index));
		*cs++ = unused_value;
	}

	*cs++ = MI_NOOP;
	FUNC6(rq, cs);

	return 0;
}