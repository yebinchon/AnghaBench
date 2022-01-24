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
struct i915_request {int /*<<< orphan*/  fence; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__** engine; } ;
struct TYPE_3__ {int /*<<< orphan*/  kernel_context; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETIME ; 
 int HZ ; 
 size_t RCS0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,long const) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 struct i915_request* FUNC4 (int /*<<< orphan*/ ,long const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	const long T = HZ / 4;
	struct drm_i915_private *i915 = arg;
	struct i915_request *request;
	int err = -EINVAL;

	/* Submit a request, treat it as a fence and wait upon it */

	FUNC5(&i915->drm.struct_mutex);
	request = FUNC4(i915->engine[RCS0]->kernel_context, T);
	if (!request) {
		err = -ENOMEM;
		goto out_locked;
	}

	if (FUNC1(&request->fence, false, T) != -ETIME) {
		FUNC7("fence wait success before submit (expected timeout)!\n");
		goto out_locked;
	}

	FUNC2(request);
	FUNC6(&i915->drm.struct_mutex);

	if (FUNC0(&request->fence)) {
		FUNC7("fence signaled immediately!\n");
		goto out_device;
	}

	if (FUNC1(&request->fence, false, T / 2) != -ETIME) {
		FUNC7("fence wait success after submit (expected timeout)!\n");
		goto out_device;
	}

	if (FUNC1(&request->fence, false, T) <= 0) {
		FUNC7("fence wait timed out (expected success)!\n");
		goto out_device;
	}

	if (!FUNC0(&request->fence)) {
		FUNC7("fence unsignaled after waiting!\n");
		goto out_device;
	}

	if (FUNC1(&request->fence, false, T) <= 0) {
		FUNC7("fence wait timed out when complete (expected success)!\n");
		goto out_device;
	}

	err = 0;
out_device:
	FUNC5(&i915->drm.struct_mutex);
out_locked:
	FUNC3(i915);
	FUNC6(&i915->drm.struct_mutex);
	return err;
}