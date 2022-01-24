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
struct i915_vma {int /*<<< orphan*/  obj; TYPE_1__* vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_MAP_WC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MI_BATCH_BUFFER_END ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i915_vma *batch)
{
	u32 *cmd;

	cmd = FUNC2(batch->obj, I915_MAP_WC);
	if (FUNC0(cmd))
		return FUNC1(cmd);

	*cmd = MI_BATCH_BUFFER_END;
	FUNC4(batch->vm->gt);

	FUNC3(batch->obj);

	return 0;
}