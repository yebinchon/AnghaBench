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
struct intel_engine_cs {int /*<<< orphan*/  name; struct i915_wa_list whitelist; struct drm_i915_private* i915; } ;
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
 int /*<<< orphan*/  FUNC9 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC17 (struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC18 (struct i915_wa_list*,char*,int /*<<< orphan*/ ) ; 

void FUNC19(struct intel_engine_cs *engine)
{
	struct drm_i915_private *i915 = engine->i915;
	struct i915_wa_list *w = &engine->whitelist;

	FUNC18(w, "whitelist", engine->name);

	if (FUNC5(i915, 12))
		FUNC16(engine);
	else if (FUNC5(i915, 11))
		FUNC13(engine);
	else if (FUNC2(i915))
		FUNC11(engine);
	else if (FUNC3(i915))
		FUNC10(engine);
	else if (FUNC4(i915))
		FUNC12(engine);
	else if (FUNC6(i915))
		FUNC14(engine);
	else if (FUNC1(i915))
		FUNC9(engine);
	else if (FUNC7(i915))
		FUNC15(engine);
	else if (FUNC0(i915) <= 8)
		return;
	else
		FUNC8(FUNC0(i915));

	FUNC17(w);
}