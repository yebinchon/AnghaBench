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
struct preempt_smoke {int /*<<< orphan*/  engine; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;
struct i915_vma {TYPE_3__ node; TYPE_2__* engine; int /*<<< orphan*/  obj; } ;
struct i915_request {TYPE_3__ node; TYPE_2__* engine; int /*<<< orphan*/  obj; } ;
struct TYPE_4__ {int priority; } ;
struct i915_gem_context {TYPE_1__ sched; int /*<<< orphan*/  vm; } ;
struct drm_i915_gem_object {int dummy; } ;
struct TYPE_5__ {int (* emit_bb_start ) (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i915_vma*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PIN_USER ; 
 int FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_vma*) ; 
 int FUNC3 (struct i915_vma*,int /*<<< orphan*/ ,int) ; 
 struct i915_vma* FUNC4 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 int FUNC6 (struct i915_vma*,struct i915_vma*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_vma*) ; 
 struct i915_vma* FUNC10 (struct i915_gem_context*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct preempt_smoke *smoke,
			struct i915_gem_context *ctx, int prio,
			struct drm_i915_gem_object *batch)
{
	struct i915_request *rq;
	struct i915_vma *vma = NULL;
	int err = 0;

	if (batch) {
		vma = FUNC4(batch, ctx->vm, NULL);
		if (FUNC0(vma))
			return FUNC1(vma);

		err = FUNC7(vma, 0, 0, PIN_USER);
		if (err)
			return err;
	}

	ctx->sched.priority = prio;

	rq = FUNC10(ctx, smoke->engine);
	if (FUNC0(rq)) {
		err = FUNC1(rq);
		goto unpin;
	}

	if (vma) {
		FUNC5(vma);
		err = FUNC3(rq, vma->obj, false);
		if (!err)
			err = FUNC6(vma, rq, 0);
		if (!err)
			err = rq->engine->emit_bb_start(rq,
							vma->node.start,
							PAGE_SIZE, 0);
		FUNC8(vma);
	}

	FUNC2(rq);

unpin:
	if (vma)
		FUNC9(vma);

	return err;
}