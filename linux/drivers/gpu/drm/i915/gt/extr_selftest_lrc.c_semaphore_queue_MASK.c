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
struct intel_engine_cs {int /*<<< orphan*/  i915; } ;
struct i915_vma {int dummy; } ;
struct i915_request {int dummy; } ;
struct i915_gem_context {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct i915_request* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 
 int FUNC2 (struct i915_request*,struct i915_vma*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (struct i915_gem_context*,struct intel_engine_cs*) ; 
 struct i915_gem_context* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gem_context*) ; 

__attribute__((used)) static struct i915_request *
FUNC7(struct intel_engine_cs *engine, struct i915_vma *vma, int idx)
{
	struct i915_gem_context *ctx;
	struct i915_request *rq;
	int err;

	ctx = FUNC5(engine->i915);
	if (!ctx)
		return FUNC0(-ENOMEM);

	rq = FUNC4(ctx, engine);
	if (FUNC1(rq))
		goto out_ctx;

	err = FUNC2(rq, vma, idx);
	FUNC3(rq);
	if (err)
		rq = FUNC0(err);

out_ctx:
	FUNC6(ctx);
	return rq;
}