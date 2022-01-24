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
typedef  int /*<<< orphan*/  u32 ;
struct sg_table {int dummy; } ;
struct intel_context {int /*<<< orphan*/  vm; } ;
struct i915_sleeve {int dummy; } ;
struct i915_page_sizes {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct clear_pages_work {int /*<<< orphan*/  wait; int /*<<< orphan*/  dma; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  work; struct intel_context* ce; struct i915_sleeve* sleeve; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_FENCE_GFP ; 
 int /*<<< orphan*/  I915_FENCE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i915_sleeve*) ; 
 int FUNC2 (struct i915_sleeve*) ; 
 int /*<<< orphan*/  clear_pages_signal_irq_worker ; 
 int /*<<< orphan*/  clear_pages_work_notify ; 
 int /*<<< orphan*/  clear_pages_work_ops ; 
 int /*<<< orphan*/  clear_pages_worker ; 
 struct i915_sleeve* FUNC3 (int /*<<< orphan*/ ,struct drm_i915_gem_object*,struct sg_table*,struct i915_page_sizes*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_sleeve*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fence_lock ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_gem_object*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct clear_pages_work* FUNC15 (int,int /*<<< orphan*/ ) ; 

int FUNC16(struct drm_i915_gem_object *obj,
				     struct intel_context *ce,
				     struct sg_table *pages,
				     struct i915_page_sizes *page_sizes,
				     u32 value)
{
	struct clear_pages_work *work;
	struct i915_sleeve *sleeve;
	int err;

	sleeve = FUNC3(ce->vm, obj, pages, page_sizes);
	if (FUNC1(sleeve))
		return FUNC2(sleeve);

	work = FUNC15(sizeof(*work), GFP_KERNEL);
	if (!work) {
		FUNC4(sleeve);
		return -ENOMEM;
	}

	work->value = value;
	work->sleeve = sleeve;
	work->ce = ce;

	FUNC0(&work->work, clear_pages_worker);

	FUNC14(&work->irq_work, clear_pages_signal_irq_worker);

	FUNC6(&work->dma, &clear_pages_work_ops, &fence_lock, 0, 0);
	FUNC13(&work->wait, clear_pages_work_notify);

	FUNC9(obj);
	err = FUNC11(&work->wait,
					      obj->base.resv, NULL,
					      true, I915_FENCE_TIMEOUT,
					      I915_FENCE_GFP);
	if (err < 0) {
		FUNC7(&work->dma, err);
	} else {
		FUNC8(obj->base.resv, &work->dma);
		err = 0;
	}
	FUNC10(obj);

	FUNC5(&work->dma);
	FUNC12(&work->wait);

	return err;
}