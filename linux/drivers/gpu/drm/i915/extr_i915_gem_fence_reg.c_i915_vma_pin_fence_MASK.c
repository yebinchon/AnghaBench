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
struct i915_vma {TYPE_2__* vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; TYPE_1__* i915; } ;
struct TYPE_3__ {int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct i915_vma *vma)
{
	int err;

	/*
	 * Note that we revoke fences on runtime suspend. Therefore the user
	 * must keep the device awake whilst using the fence.
	 */
	FUNC2(&vma->vm->i915->runtime_pm);
	FUNC0(!FUNC4(vma));
	FUNC0(!FUNC3(vma));

	err = FUNC5(&vma->vm->mutex);
	if (err)
		return err;

	err = FUNC1(vma);
	FUNC6(&vma->vm->mutex);

	return err;
}