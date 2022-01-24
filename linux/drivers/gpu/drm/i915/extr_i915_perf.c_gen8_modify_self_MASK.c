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
struct flex {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i915_request*) ; 
 int FUNC1 (struct i915_request*) ; 
 int FUNC2 (struct i915_request*,struct intel_context*,struct flex const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (struct intel_context*) ; 

__attribute__((used)) static int FUNC5(struct intel_context *ce,
			    const struct flex *flex, unsigned int count)
{
	struct i915_request *rq;
	int err;

	rq = FUNC4(ce);
	if (FUNC0(rq))
		return FUNC1(rq);

	err = FUNC2(rq, ce, flex, count);

	FUNC3(rq);
	return err;
}