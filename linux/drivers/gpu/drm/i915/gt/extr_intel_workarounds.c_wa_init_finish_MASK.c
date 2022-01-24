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
struct i915_wa_list {int count; int /*<<< orphan*/  engine_name; int /*<<< orphan*/  name; int /*<<< orphan*/  wa_count; struct i915_wa* list; } ;
struct i915_wa {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WA_LIST_CHUNK ; 
 int /*<<< orphan*/  FUNC2 (struct i915_wa*) ; 
 struct i915_wa* FUNC3 (struct i915_wa*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i915_wa_list *wal)
{
	/* Trim unused entries. */
	if (!FUNC1(wal->count, WA_LIST_CHUNK)) {
		struct i915_wa *list = FUNC3(wal->list,
					       wal->count * sizeof(*list),
					       GFP_KERNEL);

		if (list) {
			FUNC2(wal->list);
			wal->list = list;
		}
	}

	if (!wal->count)
		return;

	FUNC0("Initialized %u %s workarounds on %s\n",
			 wal->wa_count, wal->name, wal->engine_name);
}