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
struct i915_request {int /*<<< orphan*/  reserved_space; TYPE_2__* engine; TYPE_1__* timeline; int /*<<< orphan*/  hw_context; } ;
struct TYPE_4__ {int (* emit_flush ) (struct i915_request*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int has_initial_breadcrumb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMIT_INVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LEGACY_REQUEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i915_request*) ; 

__attribute__((used)) static int FUNC4(struct i915_request *request)
{
	int ret;

	FUNC0(!FUNC1(request->hw_context));
	FUNC0(request->timeline->has_initial_breadcrumb);

	/*
	 * Flush enough space to reduce the likelihood of waiting after
	 * we start building the request - in which case we will just
	 * have to repeat work.
	 */
	request->reserved_space += LEGACY_REQUEST_SIZE;

	/* Unconditionally invalidate GPU caches and TLBs. */
	ret = request->engine->emit_flush(request, EMIT_INVALIDATE);
	if (ret)
		return ret;

	ret = FUNC3(request);
	if (ret)
		return ret;

	request->reserved_space -= LEGACY_REQUEST_SIZE;
	return 0;
}