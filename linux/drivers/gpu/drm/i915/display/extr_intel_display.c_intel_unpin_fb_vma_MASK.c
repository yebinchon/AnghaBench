#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i915_vma {int /*<<< orphan*/  obj; TYPE_3__* vm; } ;
struct TYPE_6__ {TYPE_2__* i915; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_5__ {TYPE_1__ drm; } ;

/* Variables and functions */
 unsigned long PLANE_HAS_FENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct i915_vma *vma, unsigned long flags)
{
	FUNC5(&vma->vm->i915->drm.struct_mutex);

	FUNC0(vma->obj);
	if (flags & PLANE_HAS_FENCE)
		FUNC4(vma);
	FUNC2(vma);
	FUNC1(vma->obj);

	FUNC3(vma);
}