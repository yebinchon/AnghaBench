#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_cs {int (* emit_init_breadcrumb ) (struct i915_vma*) ;int (* emit_bb_start ) (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  gt; } ;
struct intel_context {TYPE_4__* vm; struct intel_engine_cs* engine; } ;
struct igt_spinner {scalar_t__ gt; int /*<<< orphan*/ * batch; int /*<<< orphan*/  hws; int /*<<< orphan*/  obj; } ;
struct TYPE_7__ {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {int /*<<< orphan*/  seqno; } ;
struct i915_vma {TYPE_3__ node; TYPE_2__* timeline; TYPE_1__ fence; } ;
struct i915_request {TYPE_3__ node; TYPE_2__* timeline; TYPE_1__ fence; } ;
struct TYPE_8__ {scalar_t__ gt; } ;
struct TYPE_6__ {scalar_t__ has_initial_breadcrumb; } ;

/* Variables and functions */
 struct i915_vma* FUNC0 (struct i915_vma*) ; 
 struct i915_vma* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  MI_BATCH_BUFFER_END ; 
 int MI_BATCH_BUFFER_START ; 
 int /*<<< orphan*/  MI_STORE_DWORD_IMM_GEN4 ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PIN_USER ; 
 int FUNC4 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*,int) ; 
 struct i915_vma* FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_vma*) ; 
 struct i915_vma* FUNC11 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct i915_vma*,struct i915_vma*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct i915_vma*) ; 
 int FUNC16 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 

struct i915_request *
FUNC18(struct igt_spinner *spin,
			   struct intel_context *ce,
			   u32 arbitration_command)
{
	struct intel_engine_cs *engine = ce->engine;
	struct i915_request *rq = NULL;
	struct i915_vma *hws, *vma;
	u32 *batch;
	int err;

	FUNC2(spin->gt != ce->vm->gt);

	vma = FUNC8(spin->obj, ce->vm, NULL);
	if (FUNC3(vma))
		return FUNC0(vma);

	hws = FUNC8(spin->hws, ce->vm, NULL);
	if (FUNC3(hws))
		return FUNC0(hws);

	err = FUNC9(vma, 0, 0, PIN_USER);
	if (err)
		return FUNC1(err);

	err = FUNC9(hws, 0, 0, PIN_USER);
	if (err)
		goto unpin_vma;

	rq = FUNC11(ce);
	if (FUNC3(rq)) {
		err = FUNC4(rq);
		goto unpin_hws;
	}

	err = FUNC14(vma, rq, 0);
	if (err)
		goto cancel_rq;

	err = FUNC14(hws, rq, 0);
	if (err)
		goto cancel_rq;

	batch = spin->batch;

	*batch++ = MI_STORE_DWORD_IMM_GEN4;
	*batch++ = FUNC13(FUNC5(hws, rq));
	*batch++ = FUNC17(FUNC5(hws, rq));
	*batch++ = rq->fence.seqno;

	*batch++ = arbitration_command;

	*batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
	*batch++ = FUNC13(vma->node.start);
	*batch++ = FUNC17(vma->node.start);
	*batch++ = MI_BATCH_BUFFER_END; /* not reached */

	FUNC12(engine->gt);

	if (engine->emit_init_breadcrumb &&
	    rq->timeline->has_initial_breadcrumb) {
		err = engine->emit_init_breadcrumb(rq);
		if (err)
			goto cancel_rq;
	}

	err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, 0);

cancel_rq:
	if (err) {
		FUNC7(rq, err);
		FUNC6(rq);
	}
unpin_hws:
	FUNC10(hws);
unpin_vma:
	FUNC10(vma);
	return err ? FUNC1(err) : rq;
}