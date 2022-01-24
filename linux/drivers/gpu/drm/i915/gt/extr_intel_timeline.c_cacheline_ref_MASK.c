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
struct intel_timeline_cacheline {int /*<<< orphan*/  active; } ;
struct i915_request {int /*<<< orphan*/  timeline; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i915_request*) ; 

__attribute__((used)) static int FUNC1(struct intel_timeline_cacheline *cl,
			 struct i915_request *rq)
{
	return FUNC0(&cl->active, rq->timeline, rq);
}