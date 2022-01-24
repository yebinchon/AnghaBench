#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct radix_tree_root {int dummy; } ;
struct i915_vma {int /*<<< orphan*/  node; int /*<<< orphan*/ * exec_flags; int /*<<< orphan*/  open_count; } ;
struct i915_lut_handle {int /*<<< orphan*/  obj_link; TYPE_3__* ctx; int /*<<< orphan*/  handle; } ;
struct i915_execbuffer {unsigned int buffer_count; TYPE_3__* gem_context; struct i915_vma** vma; TYPE_2__* args; int /*<<< orphan*/ * flags; TYPE_5__* exec; TYPE_1__* context; int /*<<< orphan*/  file; int /*<<< orphan*/  unbound; int /*<<< orphan*/  relocs; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  lut_list; } ;
struct TYPE_9__ {int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; struct radix_tree_root handles_vma; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct i915_vma*) ; 
 int FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  __EXEC_VALIDATED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct i915_execbuffer*,unsigned int,unsigned int,struct i915_vma*) ; 
 unsigned int FUNC7 (struct i915_execbuffer*) ; 
 int FUNC8 (struct i915_execbuffer*) ; 
 scalar_t__ FUNC9 (TYPE_5__*,struct i915_vma*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_gem_object*) ; 
 struct i915_lut_handle* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct i915_lut_handle*) ; 
 struct i915_vma* FUNC18 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct i915_vma*) ; 
 scalar_t__ FUNC20 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (struct radix_tree_root*,int /*<<< orphan*/ ,struct i915_vma*) ; 
 struct i915_vma* FUNC25 (struct radix_tree_root*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int) ; 

__attribute__((used)) static int FUNC27(struct i915_execbuffer *eb)
{
	struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
	struct drm_i915_gem_object *obj;
	unsigned int i, batch;
	int err;

	if (FUNC26(FUNC10(eb->gem_context)))
		return -EIO;

	FUNC1(&eb->relocs);
	FUNC1(&eb->unbound);

	batch = FUNC7(eb);

	FUNC22(&eb->gem_context->mutex);
	if (FUNC26(FUNC11(eb->gem_context))) {
		err = -ENOENT;
		goto err_ctx;
	}

	for (i = 0; i < eb->buffer_count; i++) {
		u32 handle = eb->exec[i].handle;
		struct i915_lut_handle *lut;
		struct i915_vma *vma;

		vma = FUNC25(handles_vma, handle);
		if (FUNC20(vma))
			goto add_vma;

		obj = FUNC13(eb->file, handle);
		if (FUNC26(!obj)) {
			err = -ENOENT;
			goto err_vma;
		}

		vma = FUNC18(obj, eb->context->vm, NULL);
		if (FUNC2(vma)) {
			err = FUNC3(vma);
			goto err_obj;
		}

		lut = FUNC16();
		if (FUNC26(!lut)) {
			err = -ENOMEM;
			goto err_obj;
		}

		err = FUNC24(handles_vma, handle, vma);
		if (FUNC26(err)) {
			FUNC17(lut);
			goto err_obj;
		}

		/* transfer ref to lut */
		if (!FUNC4(&vma->open_count))
			FUNC19(vma);
		lut->handle = handle;
		lut->ctx = eb->gem_context;

		FUNC12(obj);
		FUNC21(&lut->obj_link, &obj->lut_list);
		FUNC15(obj);

add_vma:
		err = FUNC6(eb, i, batch, vma);
		if (FUNC26(err))
			goto err_vma;

		FUNC0(vma != eb->vma[i]);
		FUNC0(vma->exec_flags != &eb->flags[i]);
		FUNC0(FUNC5(&vma->node) &&
			   FUNC9(&eb->exec[i], vma, eb->flags[i]));
	}

	FUNC23(&eb->gem_context->mutex);

	eb->args->flags |= __EXEC_VALIDATED;
	return FUNC8(eb);

err_obj:
	FUNC14(obj);
err_vma:
	eb->vma[i] = NULL;
err_ctx:
	FUNC23(&eb->gem_context->mutex);
	return err;
}