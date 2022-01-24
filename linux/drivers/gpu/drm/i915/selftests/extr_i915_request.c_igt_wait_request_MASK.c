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
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETIME ; 
 int HZ ; 
 size_t RCS0 ; 
 int /*<<< orphan*/  FUNC0 (struct i915_request*) ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*,int /*<<< orphan*/ ,long const) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 struct i915_request* FUNC6 (int /*<<< orphan*/ ,long const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(void *arg)
{
	const long T = HZ / 4;
	struct drm_i915_private *i915 = arg;
	struct i915_request *request;
	int err = -EINVAL;

	/* Submit a request, then wait upon it */

	FUNC7(&i915->drm.struct_mutex);
	request = FUNC6(i915->engine[RCS0]->kernel_context, T);
	if (!request) {
		err = -ENOMEM;
		goto out_unlock;
	}
	FUNC2(request);

	if (FUNC4(request, 0, 0) != -ETIME) {
		FUNC9("request wait (busy query) succeeded (expected timeout before submit!)\n");
		goto out_request;
	}

	if (FUNC4(request, 0, T) != -ETIME) {
		FUNC9("request wait succeeded (expected timeout before submit!)\n");
		goto out_request;
	}

	if (FUNC1(request)) {
		FUNC9("request completed before submit!!\n");
		goto out_request;
	}

	FUNC0(request);

	if (FUNC4(request, 0, 0) != -ETIME) {
		FUNC9("request wait (busy query) succeeded (expected timeout after submit!)\n");
		goto out_request;
	}

	if (FUNC1(request)) {
		FUNC9("request completed immediately!\n");
		goto out_request;
	}

	if (FUNC4(request, 0, T / 2) != -ETIME) {
		FUNC9("request wait succeeded (expected timeout!)\n");
		goto out_request;
	}

	if (FUNC4(request, 0, T) == -ETIME) {
		FUNC9("request wait timed out!\n");
		goto out_request;
	}

	if (!FUNC1(request)) {
		FUNC9("request not complete after waiting!\n");
		goto out_request;
	}

	if (FUNC4(request, 0, T) == -ETIME) {
		FUNC9("request wait timed out when already complete!\n");
		goto out_request;
	}

	err = 0;
out_request:
	FUNC3(request);
out_unlock:
	FUNC5(i915);
	FUNC8(&i915->drm.struct_mutex);
	return err;
}