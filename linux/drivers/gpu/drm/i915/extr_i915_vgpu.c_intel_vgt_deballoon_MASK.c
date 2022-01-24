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
struct TYPE_3__ {int /*<<< orphan*/  i915; } ;
struct i915_ggtt {TYPE_1__ vm; } ;
struct TYPE_4__ {int /*<<< orphan*/ * space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ bl_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_ggtt*,int /*<<< orphan*/ *) ; 

void FUNC3(struct i915_ggtt *ggtt)
{
	int i;

	if (!FUNC1(ggtt->vm.i915))
		return;

	FUNC0("VGT deballoon.\n");

	for (i = 0; i < 4; i++)
		FUNC2(ggtt, &bl_info.space[i]);
}