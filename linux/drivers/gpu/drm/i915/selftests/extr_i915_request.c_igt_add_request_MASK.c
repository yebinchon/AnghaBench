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
struct i915_request {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__** engine; } ;
struct TYPE_3__ {int /*<<< orphan*/  kernel_context; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HZ ; 
 size_t RCS0 ; 
 int /*<<< orphan*/  FUNC0 (struct i915_request*) ; 
 struct i915_request* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct i915_request *request;
	int err = -ENOMEM;

	/* Basic preliminary test to create a request and let it loose! */

	FUNC2(&i915->drm.struct_mutex);
	request = FUNC1(i915->engine[RCS0]->kernel_context, HZ / 10);
	if (!request)
		goto out_unlock;

	FUNC0(request);

	err = 0;
out_unlock:
	FUNC3(&i915->drm.struct_mutex);
	return err;
}