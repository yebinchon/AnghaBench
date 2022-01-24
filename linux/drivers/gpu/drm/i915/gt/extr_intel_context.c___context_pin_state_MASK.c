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
typedef  int u64 ;
struct i915_vma {TYPE_2__* obj; } ;
struct TYPE_3__ {int dirty; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;

/* Variables and functions */
 int PIN_GLOBAL ; 
 int PIN_HIGH ; 
 int PIN_OFFSET_BIAS ; 
 int FUNC0 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_vma*) ; 
 int FUNC2 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i915_vma *vma)
{
	u64 flags;
	int err;

	flags = FUNC0(vma) | PIN_OFFSET_BIAS;
	flags |= PIN_HIGH | PIN_GLOBAL;

	err = FUNC2(vma, 0, 0, flags);
	if (err)
		return err;

	/*
	 * And mark it as a globally pinned object to let the shrinker know
	 * it cannot reclaim the object until we release it.
	 */
	FUNC1(vma);
	vma->obj->mm.dirty = true;

	return 0;
}