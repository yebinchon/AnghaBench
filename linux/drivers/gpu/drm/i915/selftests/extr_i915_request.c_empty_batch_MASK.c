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
struct i915_vma {int dummy; } ;
typedef  struct i915_vma u32 ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;
struct drm_i915_private {TYPE_1__ ggtt; int /*<<< orphan*/  gt; } ;
typedef  struct i915_vma drm_i915_gem_object ;

/* Variables and functions */
 struct i915_vma* FUNC0 (struct i915_vma*) ; 
 struct i915_vma* FUNC1 (int) ; 
 int /*<<< orphan*/  I915_MAP_WB ; 
 scalar_t__ FUNC2 (struct i915_vma*) ; 
 struct i915_vma MI_BATCH_BUFFER_END ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PIN_GLOBAL ; 
 int PIN_USER ; 
 int FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*,int /*<<< orphan*/ ,int) ; 
 struct i915_vma* FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC6 (struct i915_vma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 struct i915_vma* FUNC9 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i915_vma *FUNC12(struct drm_i915_private *i915)
{
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	u32 *cmd;
	int err;

	obj = FUNC5(i915, PAGE_SIZE);
	if (FUNC2(obj))
		return FUNC0(obj);

	cmd = FUNC6(obj, I915_MAP_WB);
	if (FUNC2(cmd)) {
		err = FUNC3(cmd);
		goto err;
	}

	*cmd = MI_BATCH_BUFFER_END;

	FUNC4(obj, 0, 64);
	FUNC8(obj);

	FUNC11(&i915->gt);

	vma = FUNC9(obj, &i915->ggtt.vm, NULL);
	if (FUNC2(vma)) {
		err = FUNC3(vma);
		goto err;
	}

	err = FUNC10(vma, 0, 0, PIN_USER | PIN_GLOBAL);
	if (err)
		goto err;

	return vma;

err:
	FUNC7(obj);
	return FUNC1(err);
}