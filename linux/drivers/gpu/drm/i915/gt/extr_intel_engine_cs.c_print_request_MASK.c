#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  attr; } ;
struct i915_request {scalar_t__ emitted_jiffies; TYPE_3__ fence; TYPE_2__ sched; int /*<<< orphan*/  i915; } ;
struct drm_printer {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char* (* get_timeline_name ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 
 scalar_t__ FUNC2 (struct i915_request*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int) ; 
 char* FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_printer *m,
			  struct i915_request *rq,
			  const char *prefix)
{
	const char *name = rq->fence.ops->get_timeline_name(&rq->fence);
	char buf[80] = "";
	int x = 0;

	x = FUNC4(rq->i915, &rq->sched.attr, buf, x, sizeof(buf));

	FUNC0(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
		   prefix,
		   rq->fence.context, rq->fence.seqno,
		   FUNC1(rq) ? "!" :
		   FUNC2(rq) ? "*" :
		   "",
		   FUNC6(DMA_FENCE_FLAG_SIGNALED_BIT,
			    &rq->fence.flags) ? "+" :
		   FUNC6(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
			    &rq->fence.flags) ? "-" :
		   "",
		   buf,
		   FUNC3(jiffies - rq->emitted_jiffies),
		   name);
}