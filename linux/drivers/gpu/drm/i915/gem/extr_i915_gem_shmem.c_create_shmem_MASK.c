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
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ gemfs; } ;
struct drm_i915_private {TYPE_1__ mm; int /*<<< orphan*/  drm; } ;
struct drm_gem_object {struct file* filp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 unsigned long VM_NORESERVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_gem_object*,size_t) ; 
 struct file* FUNC3 (char*,size_t,unsigned long) ; 
 struct file* FUNC4 (scalar_t__,char*,size_t,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct drm_i915_private *i915,
			struct drm_gem_object *obj,
			size_t size)
{
	unsigned long flags = VM_NORESERVE;
	struct file *filp;

	FUNC2(&i915->drm, obj, size);

	if (i915->mm.gemfs)
		filp = FUNC4(i915->mm.gemfs, "i915", size,
						 flags);
	else
		filp = FUNC3("i915", size, flags);
	if (FUNC0(filp))
		return FUNC1(filp);

	obj->filp = filp;
	return 0;
}