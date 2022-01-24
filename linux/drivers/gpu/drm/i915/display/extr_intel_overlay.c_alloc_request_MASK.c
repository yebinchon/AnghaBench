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
struct intel_overlay {void (* flip_complete ) (struct intel_overlay*) ;int /*<<< orphan*/  last_flip; int /*<<< orphan*/  context; } ;
struct i915_request {int /*<<< orphan*/  timeline; } ;

/* Variables and functions */
 struct i915_request* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i915_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i915_request *
FUNC5(struct intel_overlay *overlay, void (*fn)(struct intel_overlay *))
{
	struct i915_request *rq;
	int err;

	overlay->flip_complete = fn;

	rq = FUNC4(overlay->context);
	if (FUNC1(rq))
		return rq;

	err = FUNC2(&overlay->last_flip, rq->timeline, rq);
	if (err) {
		FUNC3(rq);
		return FUNC0(err);
	}

	return rq;
}