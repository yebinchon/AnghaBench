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
struct intel_engine_cs {int dummy; } ;
struct i915_request {int reserved_space; int head; TYPE_1__* ring; } ;
struct i915_gem_context {int /*<<< orphan*/  i915; } ;
struct TYPE_2__ {int size; int emit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 
 int FUNC2 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (struct i915_gem_context*,struct intel_engine_cs*) ; 

__attribute__((used)) static int
FUNC5(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
{
	struct i915_request *rq;
	int ret;

	/*
	 * Before execlists, all contexts share the same ringbuffer. With
	 * execlists, each context/engine has a separate ringbuffer and
	 * for the purposes of this test, inexhaustible.
	 *
	 * For the global ringbuffer though, we have to be very careful
	 * that we do not wrap while preventing the execution of requests
	 * with a unsignaled fence.
	 */
	if (FUNC0(ctx->i915))
		return INT_MAX;

	rq = FUNC4(ctx, engine);
	if (FUNC1(rq)) {
		ret = FUNC2(rq);
	} else {
		int sz;

		ret = rq->ring->size - rq->reserved_space;
		FUNC3(rq);

		sz = rq->ring->emit - rq->head;
		if (sz < 0)
			sz += rq->ring->size;
		ret /= sz;
		ret /= 2; /* leave half spare, in case of emergency! */
	}

	return ret;
}