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
struct i915_wa_list {int dummy; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; int /*<<< orphan*/  i915; struct i915_wa_list wa_list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_wa_list*,char*,int /*<<< orphan*/ ) ; 

void FUNC4(struct intel_engine_cs *engine)
{
	struct i915_wa_list *wal = &engine->wa_list;

	if (FUNC0(engine->i915) < 8)
		return;

	FUNC3(wal, "engine", engine->name);
	FUNC1(engine, wal);
	FUNC2(wal);
}