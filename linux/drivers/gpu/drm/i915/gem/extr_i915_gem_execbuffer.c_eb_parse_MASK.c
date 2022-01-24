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
typedef  scalar_t__ u64 ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;
struct intel_engine_pool_node {int* exec_flags; struct intel_engine_pool_node* private; int /*<<< orphan*/  obj; TYPE_1__ node; } ;
struct i915_vma {int* exec_flags; struct i915_vma* private; int /*<<< orphan*/  obj; TYPE_1__ node; } ;
struct i915_execbuffer {size_t buffer_count; int* flags; int /*<<< orphan*/  batch_flags; int /*<<< orphan*/  i915; struct intel_engine_pool_node* batch; scalar_t__ batch_start_offset; int /*<<< orphan*/ * vma; int /*<<< orphan*/  batch_len; TYPE_2__* engine; int /*<<< orphan*/  gem_context; } ;
struct TYPE_4__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EACCES ; 
 struct intel_engine_pool_node* FUNC1 (struct intel_engine_pool_node*) ; 
 struct intel_engine_pool_node* FUNC2 (int) ; 
 int /*<<< orphan*/  I915_DISPATCH_SECURE ; 
 scalar_t__ FUNC3 (struct intel_engine_pool_node*) ; 
 int __EXEC_OBJECT_HAS_PIN ; 
 int __EXEC_OBJECT_HAS_REF ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_pool_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_pool_node*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct intel_engine_pool_node* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_engine_pool_node*) ; 
 struct intel_engine_pool_node* FUNC10 (struct i915_execbuffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i915_vma *FUNC11(struct i915_execbuffer *eb)
{
	struct intel_engine_pool_node *pool;
	struct i915_vma *vma;
	u64 batch_start;
	u64 shadow_batch_start;
	int err;

	pool = FUNC8(&eb->engine->pool, eb->batch_len);
	if (FUNC3(pool))
		return FUNC1(pool);

	vma = FUNC10(eb, pool->obj);
	if (FUNC3(vma))
		goto err;

	batch_start = FUNC4(eb->batch->node.start) +
		      eb->batch_start_offset;

	shadow_batch_start = FUNC4(vma->node.start);

	err = FUNC7(eb->gem_context,
				      eb->engine,
				      eb->batch->obj,
				      batch_start,
				      eb->batch_start_offset,
				      eb->batch_len,
				      pool->obj,
				      shadow_batch_start);

	if (err) {
		FUNC6(vma);

		/*
		 * Unsafe GGTT-backed buffers can still be submitted safely
		 * as non-secure.
		 * For PPGTT backing however, we have no choice but to forcibly
		 * reject unsafe buffers
		 */
		if (FUNC0(eb->i915) && (err == -EACCES))
			/* Execute original buffer non-secure */
			vma = NULL;
		else
			vma = FUNC2(err);
		goto err;
	}

	eb->vma[eb->buffer_count] = FUNC5(vma);
	eb->flags[eb->buffer_count] =
		__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_REF;
	vma->exec_flags = &eb->flags[eb->buffer_count];
	eb->buffer_count++;

	eb->batch_start_offset = 0;
	eb->batch = vma;

	if (FUNC0(eb->i915))
		eb->batch_flags |= I915_DISPATCH_SECURE;

	/* eb->batch_len unchanged */

	vma->private = pool;
	return vma;

err:
	FUNC9(pool);
	return vma;
}