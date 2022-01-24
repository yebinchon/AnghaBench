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
struct intel_engine_cs {int /*<<< orphan*/  legacy_idx; } ;
struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;
struct i915_gem_context {int dummy; } ;

/* Variables and functions */
 struct i915_request* FUNC0 (struct intel_context*) ; 
 scalar_t__ FUNC1 (struct intel_context*) ; 
 struct intel_context* FUNC2 (struct i915_gem_context*,int /*<<< orphan*/ ) ; 
 struct i915_request* FUNC3 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_context*) ; 

struct i915_request *
FUNC5(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
{
	struct intel_context *ce;
	struct i915_request *rq;

	/*
	 * Pinning the contexts may generate requests in order to acquire
	 * GGTT space, so do this first before we reserve a seqno for
	 * ourselves.
	 */
	ce = FUNC2(ctx, engine->legacy_idx);
	if (FUNC1(ce))
		return FUNC0(ce);

	rq = FUNC3(ce);
	FUNC4(ce);

	return rq;
}