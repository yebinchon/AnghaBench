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
struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i915_request*) ; 
 int FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 struct i915_request* FUNC3 (struct intel_context*) ; 
 int FUNC4 (struct intel_context*) ; 
 int FUNC5 (struct intel_context*,struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_context*) ; 
 int FUNC7 (struct i915_request*) ; 

__attribute__((used)) static int FUNC8(struct intel_context *ce, struct intel_context *remote)
{
	struct i915_request *rq;
	int err;

	err = FUNC4(remote);
	if (err)
		return err;

	rq = FUNC3(ce);
	if (FUNC0(rq)) {
		err = FUNC1(rq);
		goto unpin;
	}

	err = FUNC5(remote, rq);
	if (err) {
		FUNC2(rq);
		goto unpin;
	}

	err = FUNC7(rq);

unpin:
	FUNC6(remote);
	return err;
}