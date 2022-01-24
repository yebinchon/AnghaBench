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
struct intel_engine_cs {int (* emit_bb_start ) (struct i915_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  kernel_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
struct i915_vma {TYPE_1__ node; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 struct i915_request* FUNC0 (int) ; 
 int /*<<< orphan*/  I915_DISPATCH_SECURE ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 struct i915_request* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i915_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i915_request *
FUNC5(struct intel_engine_cs *engine,
	      struct i915_vma *batch)
{
	struct i915_request *request;
	int err;

	request = FUNC3(engine->kernel_context);
	if (FUNC1(request))
		return request;

	err = engine->emit_bb_start(request,
				    batch->node.start,
				    batch->node.size,
				    I915_DISPATCH_SECURE);
	if (err)
		goto out_request;

out_request:
	FUNC2(request);
	return err ? FUNC0(err) : request;
}