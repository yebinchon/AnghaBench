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
struct intel_sseu {int dummy; } ;
struct intel_context {TYPE_1__* engine; int /*<<< orphan*/  pin_mutex; } ;
struct i915_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kernel_context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i915_request*) ; 
 int FUNC1 (struct i915_request*) ; 
 int FUNC2 (struct i915_request*,struct intel_context*,struct intel_sseu) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_context*) ; 
 int FUNC6 (struct intel_context*,struct i915_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct intel_context *ce, struct intel_sseu sseu)
{
	struct i915_request *rq;
	int ret;

	FUNC7(&ce->pin_mutex);

	/*
	 * If the context is not idle, we have to submit an ordered request to
	 * modify its context image via the kernel context (writing to our own
	 * image, or into the registers directory, does not stick). Pristine
	 * and idle contexts will be configured on pinning.
	 */
	if (!FUNC5(ce))
		return 0;

	rq = FUNC4(ce->engine->kernel_context);
	if (FUNC0(rq))
		return FUNC1(rq);

	/* Serialise with the remote context */
	ret = FUNC6(ce, rq);
	if (ret == 0)
		ret = FUNC2(rq, ce, sseu);

	FUNC3(rq);
	return ret;
}