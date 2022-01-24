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
struct i915_vma {int /*<<< orphan*/  obj; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 unsigned int EXEC_OBJECT_WRITE ; 
 int FUNC0 (struct i915_request*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_vma*) ; 
 int FUNC2 (struct i915_vma*,struct i915_request*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 

__attribute__((used)) static int FUNC4(struct i915_vma *vma,
			  struct i915_request *rq,
			  unsigned int flags)
{
	int err;

	FUNC1(vma);
	err = FUNC0(rq, vma->obj,
					flags & EXEC_OBJECT_WRITE);
	if (err == 0)
		err = FUNC2(vma, rq, flags);
	FUNC3(vma);

	return err;
}