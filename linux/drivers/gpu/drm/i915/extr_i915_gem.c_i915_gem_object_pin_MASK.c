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
typedef  int u64 ;
struct i915_vma {int fence_size; TYPE_3__* vm; scalar_t__ fence; } ;
struct i915_ggtt_view {scalar_t__ type; } ;
struct i915_address_space {int dummy; } ;
struct TYPE_6__ {int mappable_end; } ;
struct drm_i915_private {TYPE_2__ ggtt; } ;
struct TYPE_5__ {int size; TYPE_4__* dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENODEV ; 
 int ENOSPC ; 
 struct i915_vma* FUNC0 (int) ; 
 scalar_t__ I915_GGTT_VIEW_NORMAL ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 int PIN_MAPPABLE ; 
 int PIN_NONBLOCK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 struct i915_vma* FUNC6 (struct drm_i915_gem_object*,struct i915_address_space*,struct i915_ggtt_view const*) ; 
 scalar_t__ FUNC7 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 scalar_t__ FUNC9 (struct i915_vma*) ; 
 scalar_t__ FUNC10 (struct i915_vma*,int,int,int) ; 
 int FUNC11 (struct i915_vma*,int,int,int) ; 
 int FUNC12 (struct i915_vma*) ; 
 int FUNC13 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC17 (TYPE_4__*) ; 

struct i915_vma *
FUNC18(struct drm_i915_gem_object *obj,
		    struct i915_address_space *vm,
		    const struct i915_ggtt_view *view,
		    u64 size,
		    u64 alignment,
		    u64 flags)
{
	struct drm_i915_private *dev_priv = FUNC17(obj->base.dev);
	struct i915_vma *vma;
	int ret;

	FUNC14(&obj->base.dev->struct_mutex);

	if (FUNC4(obj))
		return FUNC0(-ENODEV);

	if (flags & PIN_MAPPABLE &&
	    (!view || view->type == I915_GGTT_VIEW_NORMAL)) {
		/* If the required space is larger than the available
		 * aperture, we will not able to find a slot for the
		 * object and unbinding the object now will be in
		 * vain. Worse, doing so may cause us to ping-pong
		 * the object in and out of the Global GTT and
		 * waste a lot of cycles under the mutex.
		 */
		if (obj->base.size > dev_priv->ggtt.mappable_end)
			return FUNC0(-E2BIG);

		/* If NONBLOCK is set the caller is optimistically
		 * trying to cache the full object within the mappable
		 * aperture, and *must* have a fallback in place for
		 * situations where we cannot bind the object. We
		 * can be a little more lax here and use the fallback
		 * more often to avoid costly migrations of ourselves
		 * and other objects within the aperture.
		 *
		 * Half-the-aperture is used as a simple heuristic.
		 * More interesting would to do search for a free
		 * block prior to making the commitment to unbind.
		 * That caters for the self-harm case, and with a
		 * little more heuristics (e.g. NOFAULT, NOEVICT)
		 * we could try to minimise harm to others.
		 */
		if (flags & PIN_NONBLOCK &&
		    obj->base.size > dev_priv->ggtt.mappable_end / 2)
			return FUNC0(-ENOSPC);
	}

	vma = FUNC6(obj, vm, view);
	if (FUNC1(vma))
		return vma;

	if (FUNC10(vma, size, alignment, flags)) {
		if (flags & PIN_NONBLOCK) {
			if (FUNC9(vma) || FUNC7(vma))
				return FUNC0(-ENOSPC);

			if (flags & PIN_MAPPABLE &&
			    vma->fence_size > dev_priv->ggtt.mappable_end / 2)
				return FUNC0(-ENOSPC);
		}

		FUNC2(FUNC9(vma),
		     "bo is already pinned in ggtt with incorrect alignment:"
		     " offset=%08x, req.alignment=%llx,"
		     " req.map_and_fenceable=%d, vma->map_and_fenceable=%d\n",
		     FUNC5(vma), alignment,
		     !!(flags & PIN_MAPPABLE),
		     FUNC8(vma));
		ret = FUNC13(vma);
		if (ret)
			return FUNC0(ret);
	}

	if (vma->fence && !FUNC3(obj)) {
		FUNC15(&vma->vm->mutex);
		ret = FUNC12(vma);
		FUNC16(&vma->vm->mutex);
		if (ret)
			return FUNC0(ret);
	}

	ret = FUNC11(vma, size, alignment, flags);
	if (ret)
		return FUNC0(ret);

	return vma;
}