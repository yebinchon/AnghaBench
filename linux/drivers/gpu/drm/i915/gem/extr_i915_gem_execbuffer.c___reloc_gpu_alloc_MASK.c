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
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct intel_engine_pool_node {int /*<<< orphan*/  obj; struct intel_engine_pool_node* batch; TYPE_2__ node; int /*<<< orphan*/  vm; } ;
typedef  struct intel_engine_pool_node u32 ;
struct reloc_cache {int gen; scalar_t__ rq_size; struct intel_engine_pool_node* rq_cmd; struct intel_engine_pool_node* rq; scalar_t__ has_llc; } ;
struct i915_vma {int /*<<< orphan*/  obj; struct i915_vma* batch; TYPE_2__ node; int /*<<< orphan*/  vm; } ;
struct i915_request {int /*<<< orphan*/  obj; struct i915_request* batch; TYPE_2__ node; int /*<<< orphan*/  vm; } ;
struct i915_execbuffer {TYPE_1__* engine; int /*<<< orphan*/  context; struct reloc_cache reloc_cache; } ;
struct TYPE_3__ {int (* emit_bb_start ) (struct intel_engine_pool_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_DISPATCH_SECURE ; 
 int /*<<< orphan*/  I915_MAP_FORCE_WB ; 
 int /*<<< orphan*/  I915_MAP_FORCE_WC ; 
 scalar_t__ FUNC0 (struct intel_engine_pool_node*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PIN_NONBLOCK ; 
 int PIN_USER ; 
 int FUNC1 (struct intel_engine_pool_node*) ; 
 struct intel_engine_pool_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_pool_node*) ; 
 int FUNC5 (struct intel_engine_pool_node*,int /*<<< orphan*/ ,int) ; 
 struct intel_engine_pool_node* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_engine_pool_node*,int) ; 
 struct intel_engine_pool_node* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_engine_pool_node*) ; 
 int FUNC10 (struct intel_engine_pool_node*,struct intel_engine_pool_node*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct intel_engine_pool_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_engine_pool_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_engine_pool_node*) ; 
 struct intel_engine_pool_node* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct intel_engine_pool_node*,struct intel_engine_pool_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_engine_pool_node*) ; 
 int FUNC17 (struct intel_engine_pool_node*,struct intel_engine_pool_node*) ; 
 int FUNC18 (struct intel_engine_pool_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct i915_execbuffer *eb,
			     struct i915_vma *vma,
			     unsigned int len)
{
	struct reloc_cache *cache = &eb->reloc_cache;
	struct intel_engine_pool_node *pool;
	struct i915_request *rq;
	struct i915_vma *batch;
	u32 *cmd;
	int err;

	pool = FUNC14(&eb->engine->pool, PAGE_SIZE);
	if (FUNC0(pool))
		return FUNC1(pool);

	cmd = FUNC2(pool->obj,
				      cache->has_llc ?
				      I915_MAP_FORCE_WB :
				      I915_MAP_FORCE_WC);
	if (FUNC0(cmd)) {
		err = FUNC1(cmd);
		goto out_pool;
	}

	batch = FUNC8(pool->obj, vma->vm, NULL);
	if (FUNC0(batch)) {
		err = FUNC1(batch);
		goto err_unmap;
	}

	err = FUNC11(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
	if (err)
		goto err_unmap;

	rq = FUNC6(eb->context);
	if (FUNC0(rq)) {
		err = FUNC1(rq);
		goto err_unpin;
	}

	err = FUNC15(pool, rq);
	if (err)
		goto err_request;

	err = FUNC17(rq, vma);
	if (err)
		goto err_request;

	err = eb->engine->emit_bb_start(rq,
					batch->node.start, PAGE_SIZE,
					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
	if (err)
		goto skip_request;

	FUNC9(batch);
	err = FUNC5(rq, batch->obj, false);
	if (err == 0)
		err = FUNC10(batch, rq, 0);
	FUNC12(batch);
	if (err)
		goto skip_request;

	rq->batch = batch;
	FUNC13(batch);

	cache->rq = rq;
	cache->rq_cmd = cmd;
	cache->rq_size = 0;

	/* Return with batch mapping (cmd) still pinned */
	goto out_pool;

skip_request:
	FUNC7(rq, err);
err_request:
	FUNC4(rq);
err_unpin:
	FUNC13(batch);
err_unmap:
	FUNC3(pool->obj);
out_pool:
	FUNC16(pool);
	return err;
}