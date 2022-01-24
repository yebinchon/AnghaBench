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
struct intel_uncore {int /*<<< orphan*/  lock; } ;
struct i915_wa_list {unsigned int count; int /*<<< orphan*/  name; struct i915_wa* list; } ;
struct i915_wa {int /*<<< orphan*/  reg; int /*<<< orphan*/  val; int /*<<< orphan*/  mask; } ;
typedef  enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM_I915_DEBUG_GEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_wa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct intel_uncore*,struct i915_wa_list const*) ; 

__attribute__((used)) static void
FUNC9(struct intel_uncore *uncore, const struct i915_wa_list *wal)
{
	enum forcewake_domains fw;
	unsigned long flags;
	struct i915_wa *wa;
	unsigned int i;

	if (!wal->count)
		return;

	fw = FUNC8(uncore, wal);

	FUNC5(&uncore->lock, flags);
	FUNC1(uncore, fw);

	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
		FUNC4(uncore, wa->reg, wa->mask, wa->val);
		if (FUNC0(CONFIG_DRM_I915_DEBUG_GEM))
			FUNC7(wa,
				  FUNC3(uncore, wa->reg),
				  wal->name, "application");
	}

	FUNC2(uncore, fw);
	FUNC6(&uncore->lock, flags);
}