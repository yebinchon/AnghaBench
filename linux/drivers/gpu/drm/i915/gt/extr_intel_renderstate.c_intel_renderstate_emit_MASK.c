#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct intel_renderstate {int batch_size; int aux_size; TYPE_4__* obj; TYPE_4__* vma; int /*<<< orphan*/  aux_offset; int /*<<< orphan*/  batch_offset; TYPE_3__* rodata; } ;
struct intel_engine_cs {int (* emit_bb_start ) (struct i915_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;TYPE_2__* gt; int /*<<< orphan*/  i915; } ;
struct i915_request {int /*<<< orphan*/  i915; struct intel_engine_cs* engine; } ;
struct TYPE_19__ {int /*<<< orphan*/  obj; } ;
struct TYPE_18__ {int batch_items; } ;
struct TYPE_17__ {TYPE_1__* ggtt; } ;
struct TYPE_16__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  I915_DISPATCH_SECURE ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int PAGE_SIZE ; 
 int PIN_GLOBAL ; 
 int PIN_HIGH ; 
 int FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (struct i915_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*,struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 TYPE_3__* FUNC12 (struct intel_engine_cs*) ; 
 int FUNC13 (struct intel_renderstate*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct i915_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct i915_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC16(struct i915_request *rq)
{
	struct intel_engine_cs *engine = rq->engine;
	struct intel_renderstate so = {}; /* keep the compiler happy */
	int err;

	so.rodata = FUNC12(engine);
	if (!so.rodata)
		return 0;

	if (so.rodata->batch_items * 4 > PAGE_SIZE)
		return -EINVAL;

	so.obj = FUNC2(engine->i915, PAGE_SIZE);
	if (FUNC0(so.obj))
		return FUNC1(so.obj);

	so.vma = FUNC6(so.obj, &engine->gt->ggtt->vm, NULL);
	if (FUNC0(so.vma)) {
		err = FUNC1(so.vma);
		goto err_obj;
	}

	err = FUNC9(so.vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
	if (err)
		goto err_vma;

	err = FUNC13(&so, rq->i915);
	if (err)
		goto err_unpin;

	err = engine->emit_bb_start(rq,
				    so.batch_offset, so.batch_size,
				    I915_DISPATCH_SECURE);
	if (err)
		goto err_unpin;

	if (so.aux_size > 8) {
		err = engine->emit_bb_start(rq,
					    so.aux_offset, so.aux_size,
					    I915_DISPATCH_SECURE);
		if (err)
			goto err_unpin;
	}

	FUNC7(so.vma);
	err = FUNC4(rq, so.vma->obj, false);
	if (err == 0)
		err = FUNC8(so.vma, rq, 0);
	FUNC10(so.vma);
err_unpin:
	FUNC11(so.vma);
err_vma:
	FUNC5(so.vma);
err_obj:
	FUNC3(so.obj);
	return err;
}