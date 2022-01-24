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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_cs {int (* emit_bb_start ) (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ;TYPE_2__* gt; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
struct i915_vma {scalar_t__ size; int /*<<< orphan*/  obj; TYPE_3__ node; } ;
struct i915_request {scalar_t__ size; int /*<<< orphan*/  obj; TYPE_3__ node; } ;
struct i915_gem_context {int /*<<< orphan*/  vm; } ;
struct i915_address_space {scalar_t__ total; int /*<<< orphan*/  i915; } ;
struct TYPE_5__ {TYPE_1__* ggtt; } ;
struct TYPE_4__ {struct i915_address_space vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_OBJECT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int I915_DISPATCH_SECURE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i915_vma*) ; 
 int FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 
 int FUNC5 (struct i915_vma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_vma*) ; 
 int FUNC10 (struct i915_vma*,struct i915_vma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC12 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC13 (struct i915_vma*) ; 
 struct i915_vma* FUNC14 (struct i915_vma*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC15 (struct i915_gem_context*,struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_engine_cs*) ; 
 int FUNC17 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC18(struct i915_vma *vma,
		    struct i915_gem_context *ctx,
		    struct intel_engine_cs *engine,
		    u64 offset,
		    unsigned long count,
		    u32 val)
{
	struct i915_address_space *vm = ctx->vm ?: &engine->gt->ggtt->vm;
	struct i915_request *rq;
	struct i915_vma *batch;
	unsigned int flags;
	int err;

	FUNC0(vma->size > vm->total);
	FUNC0(!FUNC16(engine));
	FUNC0(!FUNC8(vma));

	batch = FUNC14(vma, offset, count, val);
	if (FUNC2(batch))
		return FUNC3(batch);

	rq = FUNC15(ctx, engine);
	if (FUNC2(rq)) {
		err = FUNC3(rq);
		goto err_batch;
	}

	flags = 0;
	if (FUNC1(vm->i915) <= 5)
		flags |= I915_DISPATCH_SECURE;

	err = engine->emit_bb_start(rq,
				    batch->node.start, batch->node.size,
				    flags);
	if (err)
		goto err_request;

	FUNC9(batch);
	err = FUNC5(rq, batch->obj, false);
	if (err == 0)
		err = FUNC10(batch, rq, 0);
	FUNC12(batch);
	if (err)
		goto skip_request;

	FUNC9(vma);
	err = FUNC5(rq, vma->obj, true);
	if (err == 0)
		err = FUNC10(vma, rq, EXEC_OBJECT_WRITE);
	FUNC12(vma);
	if (err)
		goto skip_request;

	FUNC4(rq);

	FUNC13(batch);
	FUNC7(batch);
	FUNC11(batch);

	return 0;

skip_request:
	FUNC6(rq, err);
err_request:
	FUNC4(rq);
err_batch:
	FUNC13(batch);
	FUNC11(batch);
	return err;
}