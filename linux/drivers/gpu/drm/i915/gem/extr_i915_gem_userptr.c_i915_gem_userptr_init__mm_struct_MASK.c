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
struct i915_mm_struct {int /*<<< orphan*/  kref; scalar_t__ mm; int /*<<< orphan*/  node; int /*<<< orphan*/ * mn; void* i915; } ;
struct drm_i915_private {int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  mm_structs; } ;
struct TYPE_5__ {struct i915_mm_struct* mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {TYPE_2__ userptr; TYPE_1__ base; } ;
struct TYPE_6__ {scalar_t__ mm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct i915_mm_struct* FUNC0 (struct drm_i915_private*,scalar_t__) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 struct i915_mm_struct* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *dev_priv = FUNC8(obj->base.dev);
	struct i915_mm_struct *mm;
	int ret = 0;

	/* During release of the GEM object we hold the struct_mutex. This
	 * precludes us from calling mmput() at that time as that may be
	 * the last reference and so call exit_mmap(). exit_mmap() will
	 * attempt to reap the vma, and if we were holding a GTT mmap
	 * would then call drm_gem_vm_close() and attempt to reacquire
	 * the struct mutex. So in order to avoid that recursion, we have
	 * to defer releasing the mm reference until after we drop the
	 * struct_mutex, i.e. we need to schedule a worker to do the clean
	 * up.
	 */
	FUNC6(&dev_priv->mm_lock);
	mm = FUNC0(dev_priv, current->mm);
	if (mm == NULL) {
		mm = FUNC2(sizeof(*mm), GFP_KERNEL);
		if (mm == NULL) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC4(&mm->kref);
		mm->i915 = FUNC8(obj->base.dev);

		mm->mm = current->mm;
		FUNC5(current->mm);

		mm->mn = NULL;

		/* Protected by dev_priv->mm_lock */
		FUNC1(dev_priv->mm_structs,
			 &mm->node, (unsigned long)mm->mm);
	} else
		FUNC3(&mm->kref);

	obj->userptr.mm = mm;
out:
	FUNC7(&dev_priv->mm_lock);
	return ret;
}