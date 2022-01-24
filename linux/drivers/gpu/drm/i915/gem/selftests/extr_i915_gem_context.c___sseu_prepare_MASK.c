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
struct intel_context {TYPE_1__* engine; } ;
struct igt_spinner {int dummy; } ;
struct i915_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct i915_request*) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC1 (struct i915_request*) ; 
 unsigned int TEST_BUSY ; 
 unsigned int TEST_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct igt_spinner**) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (struct igt_spinner*,struct intel_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct igt_spinner*) ; 
 int /*<<< orphan*/  FUNC6 (struct igt_spinner*) ; 
 int FUNC7 (struct igt_spinner*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct igt_spinner*,struct i915_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct igt_spinner* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

__attribute__((used)) static int
FUNC12(const char *name,
	       unsigned int flags,
	       struct intel_context *ce,
	       struct igt_spinner **spin)
{
	struct i915_request *rq;
	int ret;

	*spin = NULL;
	if (!(flags & (TEST_BUSY | TEST_RESET)))
		return 0;

	*spin = FUNC10(sizeof(**spin), GFP_KERNEL);
	if (!*spin)
		return -ENOMEM;

	ret = FUNC7(*spin, ce->engine->gt);
	if (ret)
		goto err_free;

	rq = FUNC4(*spin, ce, MI_NOOP);
	if (FUNC0(rq)) {
		ret = FUNC1(rq);
		goto err_fini;
	}

	FUNC3(rq);

	if (!FUNC8(*spin, rq)) {
		FUNC11("%s: Spinner failed to start!\n", name);
		ret = -ETIMEDOUT;
		goto err_end;
	}

	return 0;

err_end:
	FUNC5(*spin);
err_fini:
	FUNC6(*spin);
err_free:
	FUNC9(FUNC2(spin));
	return ret;
}