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
struct intel_context {int dummy; } ;
struct i915_request {TYPE_1__* engine; } ;
struct i915_gem_context {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* submit_request ) (struct i915_request*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct intel_context*) ; 
 int /*<<< orphan*/  RCS0 ; 
 struct intel_context* FUNC2 (struct i915_gem_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 scalar_t__ FUNC4 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_request*) ; 
 struct i915_gem_context* FUNC10 (struct drm_i915_private*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 struct i915_request* FUNC13 (struct intel_context*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct i915_request*) ; 

__attribute__((used)) static int FUNC20(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct i915_request *request, *vip;
	struct i915_gem_context *ctx[2];
	struct intel_context *ce;
	int err = -EINVAL;

	FUNC14(&i915->drm.struct_mutex);
	ctx[0] = FUNC10(i915, "A");
	ce = FUNC2(ctx[0], RCS0);
	FUNC0(FUNC1(ce));
	request = FUNC13(ce, 2 * HZ);
	FUNC8(ce);
	if (!request) {
		err = -ENOMEM;
		goto err_context_0;
	}

	FUNC5(request);
	FUNC3(request);

	ctx[1] = FUNC10(i915, "B");
	ce = FUNC2(ctx[1], RCS0);
	FUNC0(FUNC1(ce));
	vip = FUNC13(ce, 0);
	FUNC8(ce);
	if (!vip) {
		err = -ENOMEM;
		goto err_context_1;
	}

	/* Simulate preemption by manual reordering */
	if (!FUNC9(request)) {
		FUNC16("failed to cancel request (already executed)!\n");
		FUNC3(vip);
		goto err_context_1;
	}
	FUNC5(vip);
	FUNC3(vip);
	FUNC17();
	request->engine->submit_request(request);
	FUNC18();

	FUNC15(&i915->drm.struct_mutex);

	if (FUNC7(vip, 0, HZ) == -ETIME) {
		FUNC16("timed out waiting for high priority request\n");
		goto err;
	}

	if (FUNC4(request)) {
		FUNC16("low priority request already completed\n");
		goto err;
	}

	err = 0;
err:
	FUNC6(vip);
	FUNC14(&i915->drm.struct_mutex);
err_context_1:
	FUNC11(ctx[1]);
	FUNC6(request);
err_context_0:
	FUNC11(ctx[0]);
	FUNC12(i915);
	FUNC15(&i915->drm.struct_mutex);
	return err;
}