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
struct intel_engine_cs {scalar_t__ class; int /*<<< orphan*/  name; struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ RENDER_CLASS ; 
 int /*<<< orphan*/  FUNC11 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_engine_cs*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC21 (struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC22 (struct i915_wa_list*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23(struct intel_engine_cs *engine,
			   struct i915_wa_list *wal,
			   const char *name)
{
	struct drm_i915_private *i915 = engine->i915;

	if (engine->class != RENDER_CLASS)
		return;

	FUNC22(wal, name, engine->name);

	if (FUNC7(i915, 12))
		FUNC20(engine, wal);
	else if (FUNC7(i915, 11))
		FUNC17(engine, wal);
	else if (FUNC3(i915))
		FUNC15(engine, wal);
	else if (FUNC5(i915))
		FUNC13(engine, wal);
	else if (FUNC6(i915))
		FUNC16(engine, wal);
	else if (FUNC8(i915))
		FUNC18(engine, wal);
	else if (FUNC2(i915))
		FUNC12(engine, wal);
	else if (FUNC9(i915))
		FUNC19(engine, wal);
	else if (FUNC4(i915))
		FUNC14(engine, wal);
	else if (FUNC1(i915))
		FUNC11(engine, wal);
	else if (FUNC0(i915) < 8)
		return;
	else
		FUNC10(FUNC0(i915));

	FUNC21(wal);
}