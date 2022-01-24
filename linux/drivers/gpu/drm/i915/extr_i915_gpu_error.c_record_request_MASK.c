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
struct TYPE_5__ {int /*<<< orphan*/  attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; int /*<<< orphan*/  flags; } ;
struct i915_request {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; TYPE_3__* ring; int /*<<< orphan*/  emitted_jiffies; TYPE_2__ sched; TYPE_1__ fence; struct i915_gem_context* gem_context; } ;
struct i915_gem_context {scalar_t__ pid; } ;
struct drm_i915_error_request {int /*<<< orphan*/  pid; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  start; int /*<<< orphan*/  jiffies; int /*<<< orphan*/  sched_attr; int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(const struct i915_request *request,
			   struct drm_i915_error_request *erq)
{
	const struct i915_gem_context *ctx = request->gem_context;

	erq->flags = request->fence.flags;
	erq->context = request->fence.context;
	erq->seqno = request->fence.seqno;
	erq->sched_attr = request->sched.attr;
	erq->jiffies = request->emitted_jiffies;
	erq->start = FUNC0(request->ring->vma);
	erq->head = request->head;
	erq->tail = request->tail;

	FUNC2();
	erq->pid = ctx->pid ? FUNC1(ctx->pid) : 0;
	FUNC3();
}