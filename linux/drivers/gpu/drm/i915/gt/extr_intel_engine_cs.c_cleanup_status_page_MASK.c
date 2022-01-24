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
struct TYPE_2__ {int /*<<< orphan*/  vma; } ;
struct intel_engine_cs {int /*<<< orphan*/  i915; TYPE_1__ status_page; } ;
struct i915_vma {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_cs*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct intel_engine_cs *engine)
{
	struct i915_vma *vma;

	/* Prevent writes into HWSP after returning the page to the system */
	FUNC5(engine, ~0u);

	vma = FUNC1(&engine->status_page.vma);
	if (!vma)
		return;

	if (!FUNC0(engine->i915))
		FUNC4(vma);

	FUNC3(vma->obj);
	FUNC2(vma->obj);
}