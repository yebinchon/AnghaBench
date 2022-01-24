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
struct TYPE_6__ {int start; } ;
struct i915_vma {int* exec_flags; TYPE_3__ node; int /*<<< orphan*/  exec_link; int /*<<< orphan*/  reloc_link; int /*<<< orphan*/  exec_node; int /*<<< orphan*/  exec_handle; } ;
struct TYPE_4__ {scalar_t__ has_fence; } ;
struct i915_execbuffer {int* flags; int /*<<< orphan*/  unbound; TYPE_2__* args; struct i915_vma* batch; TYPE_1__ reloc_cache; struct i915_vma** vma; int /*<<< orphan*/  relocs; int /*<<< orphan*/  lut_size; int /*<<< orphan*/ * buckets; struct drm_i915_gem_exec_object2* exec; } ;
struct drm_i915_gem_exec_object2 {int flags; int offset; scalar_t__ relocation_count; int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int EXEC_OBJECT_NEEDS_FENCE ; 
 int EXEC_OBJECT_PINNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UPDATE ; 
 int __EXEC_HAS_RELOC ; 
 int __EXEC_OBJECT_NEEDS_BIAS ; 
 int __EXEC_VALIDATED ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (struct i915_execbuffer*,struct drm_i915_gem_exec_object2*,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*,int*) ; 
 int FUNC4 (struct i915_execbuffer*,struct drm_i915_gem_exec_object2*,struct i915_vma*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 int FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct i915_execbuffer *eb,
	   unsigned int i, unsigned batch_idx,
	   struct i915_vma *vma)
{
	struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
	int err;

	FUNC0(FUNC7(vma));

	if (!(eb->args->flags & __EXEC_VALIDATED)) {
		err = FUNC4(eb, entry, vma);
		if (FUNC10(err))
			return err;
	}

	if (eb->lut_size > 0) {
		vma->exec_handle = entry->handle;
		FUNC6(&vma->exec_node,
			       &eb->buckets[FUNC5(entry->handle,
						    eb->lut_size)]);
	}

	if (entry->relocation_count)
		FUNC9(&vma->reloc_link, &eb->relocs);

	/*
	 * Stash a pointer from the vma to execobj, so we can query its flags,
	 * size, alignment etc as provided by the user. Also we stash a pointer
	 * to the vma inside the execobj so that we can use a direct lookup
	 * to find the right target VMA when doing relocations.
	 */
	eb->vma[i] = vma;
	eb->flags[i] = entry->flags;
	vma->exec_flags = &eb->flags[i];

	/*
	 * SNA is doing fancy tricks with compressing batch buffers, which leads
	 * to negative relocation deltas. Usually that works out ok since the
	 * relocate address is still positive, except when the batch is placed
	 * very low in the GTT. Ensure this doesn't happen.
	 *
	 * Note that actual hangs have only been observed on gen7, but for
	 * paranoia do it everywhere.
	 */
	if (i == batch_idx) {
		if (entry->relocation_count &&
		    !(eb->flags[i] & EXEC_OBJECT_PINNED))
			eb->flags[i] |= __EXEC_OBJECT_NEEDS_BIAS;
		if (eb->reloc_cache.has_fence)
			eb->flags[i] |= EXEC_OBJECT_NEEDS_FENCE;

		eb->batch = vma;
	}

	err = 0;
	if (FUNC2(eb, entry, vma)) {
		if (entry->offset != vma->node.start) {
			entry->offset = vma->node.start | UPDATE;
			eb->args->flags |= __EXEC_HAS_RELOC;
		}
	} else {
		FUNC3(vma, vma->exec_flags);

		FUNC9(&vma->exec_link, &eb->unbound);
		if (FUNC1(&vma->node))
			err = FUNC8(vma);
		if (FUNC10(err))
			vma->exec_flags = NULL;
	}
	return err;
}