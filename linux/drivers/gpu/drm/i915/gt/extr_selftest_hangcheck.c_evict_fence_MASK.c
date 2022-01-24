#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct evict_vma {TYPE_3__* vma; int /*<<< orphan*/  completion; } ;
struct TYPE_8__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_9__ {int /*<<< orphan*/  obj; TYPE_1__* vm; } ;
struct TYPE_7__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_TILING_Y ; 
 int PIN_GLOBAL ; 
 int PIN_MAPPABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct evict_vma *arg = data;
	struct drm_i915_private *i915 = arg->vma->vm->i915;
	int err;

	FUNC0(&arg->completion);

	FUNC6(&i915->drm.struct_mutex);

	/* Mark the fence register as dirty to force the mmio update. */
	err = FUNC1(arg->vma->obj, I915_TILING_Y, 512);
	if (err) {
		FUNC8("Invalid Y-tiling settings; err:%d\n", err);
		goto out_unlock;
	}

	err = FUNC2(arg->vma, 0, 0, PIN_GLOBAL | PIN_MAPPABLE);
	if (err) {
		FUNC8("Unable to pin vma for Y-tiled fence; err:%d\n", err);
		goto out_unlock;
	}

	err = FUNC3(arg->vma);
	FUNC4(arg->vma);
	if (err) {
		FUNC8("Unable to pin Y-tiled fence; err:%d\n", err);
		goto out_unlock;
	}

	FUNC5(arg->vma);

out_unlock:
	FUNC7(&i915->drm.struct_mutex);

	return err;
}