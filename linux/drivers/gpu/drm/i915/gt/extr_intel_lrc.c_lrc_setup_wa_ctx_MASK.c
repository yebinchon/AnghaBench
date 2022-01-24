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
struct TYPE_4__ {struct i915_vma* vma; } ;
struct intel_engine_cs {TYPE_1__ wa_ctx; TYPE_3__* gt; int /*<<< orphan*/  i915; } ;
struct i915_vma {int dummy; } ;
typedef  struct i915_vma drm_i915_gem_object ;
struct TYPE_6__ {TYPE_2__* ggtt; } ;
struct TYPE_5__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTX_WA_BB_OBJ_SIZE ; 
 scalar_t__ FUNC0 (struct i915_vma*) ; 
 int PIN_GLOBAL ; 
 int PIN_HIGH ; 
 int FUNC1 (struct i915_vma*) ; 
 struct i915_vma* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 
 struct i915_vma* FUNC4 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct intel_engine_cs *engine)
{
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	int err;

	obj = FUNC2(engine->i915, CTX_WA_BB_OBJ_SIZE);
	if (FUNC0(obj))
		return FUNC1(obj);

	vma = FUNC4(obj, &engine->gt->ggtt->vm, NULL);
	if (FUNC0(vma)) {
		err = FUNC1(vma);
		goto err;
	}

	err = FUNC5(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
	if (err)
		goto err;

	engine->wa_ctx.vma = vma;
	return 0;

err:
	FUNC3(obj);
	return err;
}