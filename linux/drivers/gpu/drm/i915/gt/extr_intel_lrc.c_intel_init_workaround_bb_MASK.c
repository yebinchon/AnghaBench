#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* (* wa_bb_func_t ) (struct intel_engine_cs*,void*) ;
struct page {int dummy; } ;
struct i915_wa_ctx_bb {int offset; int size; } ;
struct i915_ctx_workarounds {TYPE_1__* vma; struct i915_wa_ctx_bb per_ctx; struct i915_wa_ctx_bb indirect_ctx; } ;
struct intel_engine_cs {scalar_t__ class; int /*<<< orphan*/  i915; struct i915_ctx_workarounds wa_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 unsigned int FUNC0 (void* (*) (struct intel_engine_cs*,void*)) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CACHELINE_BYTES ; 
 int CTX_WA_BB_OBJ_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ RENDER_CLASS ; 
 void* FUNC7 (struct intel_engine_cs*,void*) ; 
 void* FUNC8 (struct intel_engine_cs*,void*) ; 
 void* FUNC9 (struct intel_engine_cs*,void*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_engine_cs*) ; 
 int FUNC14 (struct intel_engine_cs*) ; 
 void* FUNC15 (struct intel_engine_cs*,void*) ; 

__attribute__((used)) static int FUNC16(struct intel_engine_cs *engine)
{
	struct i915_ctx_workarounds *wa_ctx = &engine->wa_ctx;
	struct i915_wa_ctx_bb *wa_bb[2] = { &wa_ctx->indirect_ctx,
					    &wa_ctx->per_ctx };
	wa_bb_func_t wa_bb_fn[2];
	struct page *page;
	void *batch, *batch_ptr;
	unsigned int i;
	int ret;

	if (engine->class != RENDER_CLASS)
		return 0;

	switch (FUNC4(engine->i915)) {
	case 12:
	case 11:
		return 0;
	case 10:
		wa_bb_fn[0] = gen10_init_indirectctx_bb;
		wa_bb_fn[1] = NULL;
		break;
	case 9:
		wa_bb_fn[0] = gen9_init_indirectctx_bb;
		wa_bb_fn[1] = NULL;
		break;
	case 8:
		wa_bb_fn[0] = gen8_init_indirectctx_bb;
		wa_bb_fn[1] = NULL;
		break;
	default:
		FUNC6(FUNC4(engine->i915));
		return 0;
	}

	ret = FUNC14(engine);
	if (ret) {
		FUNC2("Failed to setup context WA page: %d\n", ret);
		return ret;
	}

	page = FUNC10(wa_ctx->vma->obj, 0);
	batch = batch_ptr = FUNC11(page);

	/*
	 * Emit the two workaround batch buffers, recording the offset from the
	 * start of the workaround batch buffer object for each and their
	 * respective sizes.
	 */
	for (i = 0; i < FUNC0(wa_bb_fn); i++) {
		wa_bb[i]->offset = batch_ptr - batch;
		if (FUNC3(!FUNC5(wa_bb[i]->offset,
						  CACHELINE_BYTES))) {
			ret = -EINVAL;
			break;
		}
		if (wa_bb_fn[i])
			batch_ptr = wa_bb_fn[i](engine, batch_ptr);
		wa_bb[i]->size = batch_ptr - (batch + wa_bb[i]->offset);
	}

	FUNC1(batch_ptr - batch > CTX_WA_BB_OBJ_SIZE);

	FUNC12(batch);
	if (ret)
		FUNC13(engine);

	return ret;
}