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
struct intel_context {int /*<<< orphan*/  vm; int /*<<< orphan*/  engine; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
struct i915_vma {int /*<<< orphan*/  obj; TYPE_2__ node; TYPE_1__* engine; } ;
struct i915_request {int /*<<< orphan*/  obj; TYPE_2__ node; TYPE_1__* engine; } ;
struct drm_i915_gem_object {int dummy; } ;
struct TYPE_3__ {int (* emit_bb_start ) (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_OBJECT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 int /*<<< orphan*/  PIN_USER ; 
 int FUNC2 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 int FUNC7 (struct i915_vma*,int /*<<< orphan*/ ,int) ; 
 struct i915_vma* FUNC8 (struct intel_context*) ; 
 struct i915_vma* FUNC9 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_vma*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_vma*) ; 
 struct i915_vma* FUNC12 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct i915_vma*) ; 
 int FUNC14 (struct i915_vma*,struct i915_vma*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC17 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC18 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC20 (struct i915_vma*) ; 
 int FUNC21 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(struct drm_i915_gem_object *obj,
		struct intel_context *ce,
		struct i915_request **rq_out)
{
	struct i915_request *rq;
	struct i915_vma *batch;
	struct i915_vma *vma;
	int err;

	FUNC0(!FUNC19(ce->engine));

	vma = FUNC12(obj, ce->vm, NULL);
	if (FUNC1(vma))
		return FUNC2(vma);

	FUNC3(obj);
	err = FUNC4(obj, false);
	FUNC5(obj);
	if (err)
		return err;

	err = FUNC15(vma, 0, 0, PIN_USER);
	if (err)
		return err;

	batch = FUNC20(vma);
	if (FUNC1(batch)) {
		err = FUNC2(batch);
		goto err_vma;
	}

	rq = FUNC8(ce);
	if (FUNC1(rq)) {
		err = FUNC2(rq);
		goto err_batch;
	}

	err = rq->engine->emit_bb_start(rq,
					batch->node.start, batch->node.size,
					0);
	if (err)
		goto err_request;

	FUNC13(batch);
	err = FUNC7(rq, batch->obj, false);
	if (err == 0)
		err = FUNC14(batch, rq, 0);
	FUNC17(batch);
	if (err)
		goto skip_request;

	FUNC13(vma);
	err = FUNC7(rq, vma->obj, true);
	if (err == 0)
		err = FUNC14(vma, rq, EXEC_OBJECT_WRITE);
	FUNC17(vma);
	if (err)
		goto skip_request;

	FUNC18(batch);
	FUNC11(batch);
	FUNC16(batch);

	FUNC18(vma);

	*rq_out = FUNC9(rq);

	FUNC6(rq);

	return 0;

skip_request:
	FUNC10(rq, err);
err_request:
	FUNC6(rq);
err_batch:
	FUNC18(batch);
	FUNC16(batch);
err_vma:
	FUNC18(vma);

	return err;
}