#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,struct i915_wa_list*) ; 

__attribute__((used)) static void
FUNC17(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
	if (FUNC5(i915, 12))
		FUNC16(i915, wal);
	else if (FUNC5(i915, 11))
		FUNC13(i915, wal);
	else if (FUNC2(i915))
		FUNC11(i915, wal);
	else if (FUNC3(i915))
		FUNC10(i915, wal);
	else if (FUNC4(i915))
		FUNC12(i915, wal);
	else if (FUNC6(i915))
		FUNC14(i915, wal);
	else if (FUNC1(i915))
		FUNC9(i915, wal);
	else if (FUNC7(i915))
		FUNC15(i915, wal);
	else if (FUNC0(i915) <= 8)
		return;
	else
		FUNC8(FUNC0(i915));
}