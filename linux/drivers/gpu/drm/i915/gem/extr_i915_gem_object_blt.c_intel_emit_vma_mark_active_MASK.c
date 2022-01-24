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
struct i915_vma {int /*<<< orphan*/  private; int /*<<< orphan*/  obj; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i915_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_vma*) ; 
 int FUNC2 (struct i915_vma*,struct i915_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct i915_request*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct i915_vma *vma, struct i915_request *rq)
{
	int err;

	FUNC1(vma);
	err = FUNC0(rq, vma->obj, false);
	if (err == 0)
		err = FUNC2(vma, rq, 0);
	FUNC3(vma);
	if (FUNC5(err))
		return err;

	return FUNC4(vma->private, rq);
}