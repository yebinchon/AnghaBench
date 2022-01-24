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
struct intel_engine_cs {scalar_t__ class; int /*<<< orphan*/  i915; } ;
struct i915_wa_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RENDER_CLASS ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*,struct i915_wa_list*) ; 

__attribute__((used)) static void
FUNC4(struct intel_engine_cs *engine, struct i915_wa_list *wal)
{
	if (FUNC0(FUNC1(engine->i915) < 8))
		return;

	if (engine->class == RENDER_CLASS)
		FUNC2(engine, wal);
	else
		FUNC3(engine, wal);
}