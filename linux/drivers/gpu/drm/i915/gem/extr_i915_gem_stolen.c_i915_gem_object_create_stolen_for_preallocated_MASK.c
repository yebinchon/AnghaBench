#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct i915_vma {int /*<<< orphan*/  vm_link; int /*<<< orphan*/  flags; int /*<<< orphan*/  pages; int /*<<< orphan*/  node; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bound_list; } ;
struct i915_ggtt {TYPE_4__ vm; } ;
struct drm_mm_node {void* size; void* start; } ;
struct TYPE_7__ {int /*<<< orphan*/  stolen_lock; int /*<<< orphan*/  stolen; } ;
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ mm; TYPE_1__ drm; struct i915_ggtt ggtt; } ;
struct TYPE_8__ {int /*<<< orphan*/  pages; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  bind_count; TYPE_3__ mm; int /*<<< orphan*/  cache_level; } ;
typedef  void* resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_GTT_MIN_ALIGNMENT ; 
 void* I915_GTT_OFFSET_NONE ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE ; 
 int /*<<< orphan*/  I915_VMA_GLOBAL_BIND ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i915_vma*) ; 
 int FUNC4 (struct i915_vma*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 struct drm_i915_gem_object* FUNC7 (struct drm_i915_private*,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct drm_mm_node*) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct drm_i915_gem_object*) ; 
 int FUNC14 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*,struct drm_mm_node*) ; 
 struct i915_vma* FUNC18 (struct drm_i915_gem_object*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_mm_node*) ; 
 struct drm_mm_node* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

struct drm_i915_gem_object *
FUNC25(struct drm_i915_private *dev_priv,
					       resource_size_t stolen_offset,
					       resource_size_t gtt_offset,
					       resource_size_t size)
{
	struct i915_ggtt *ggtt = &dev_priv->ggtt;
	struct drm_i915_gem_object *obj;
	struct drm_mm_node *stolen;
	struct i915_vma *vma;
	int ret;

	if (!FUNC9(&dev_priv->mm.stolen))
		return NULL;

	FUNC22(&dev_priv->drm.struct_mutex);

	FUNC0("creating preallocated stolen object: stolen_offset=%pa, gtt_offset=%pa, size=%pa\n",
			 &stolen_offset, &gtt_offset, &size);

	/* KISS and expect everything to be page-aligned */
	if (FUNC5(size == 0) ||
	    FUNC5(!FUNC2(size, I915_GTT_PAGE_SIZE)) ||
	    FUNC5(!FUNC2(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
		return NULL;

	stolen = FUNC20(sizeof(*stolen), GFP_KERNEL);
	if (!stolen)
		return NULL;

	stolen->start = stolen_offset;
	stolen->size = size;
	FUNC23(&dev_priv->mm.stolen_lock);
	ret = FUNC11(&dev_priv->mm.stolen, stolen);
	FUNC24(&dev_priv->mm.stolen_lock);
	if (ret) {
		FUNC0("failed to allocate stolen space\n");
		FUNC19(stolen);
		return NULL;
	}

	obj = FUNC7(dev_priv, stolen);
	if (obj == NULL) {
		FUNC0("failed to allocate stolen object\n");
		FUNC17(dev_priv, stolen);
		FUNC19(stolen);
		return NULL;
	}

	/* Some objects just need physical mem from stolen space */
	if (gtt_offset == I915_GTT_OFFSET_NONE)
		return obj;

	ret = FUNC14(obj);
	if (ret)
		goto err;

	vma = FUNC18(obj, &ggtt->vm, NULL);
	if (FUNC3(vma)) {
		ret = FUNC4(vma);
		goto err_pages;
	}

	/* To simplify the initialisation sequence between KMS and GTT,
	 * we allow construction of the stolen object prior to
	 * setting up the GTT space. The actual reservation will occur
	 * later.
	 */
	ret = FUNC12(&ggtt->vm, &vma->node,
				   size, gtt_offset, obj->cache_level,
				   0);
	if (ret) {
		FUNC0("failed to allocate stolen GTT space\n");
		goto err_pages;
	}

	FUNC1(!FUNC10(&vma->node));

	vma->pages = obj->mm.pages;
	vma->flags |= I915_VMA_GLOBAL_BIND;
	FUNC6(vma);

	FUNC23(&ggtt->vm.mutex);
	FUNC21(&vma->vm_link, &ggtt->vm.bound_list);
	FUNC24(&ggtt->vm.mutex);

	FUNC1(FUNC13(obj));
	FUNC8(&obj->bind_count);

	return obj;

err_pages:
	FUNC16(obj);
err:
	FUNC15(obj);
	return NULL;
}