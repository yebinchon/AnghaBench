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
struct TYPE_2__ {int /*<<< orphan*/  timeline; int /*<<< orphan*/  ring; } ;
struct intel_engine_cs {TYPE_1__ legacy; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int MODE_IDLE ; 
 int /*<<< orphan*/  RING_MI_MODE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_engine_cs*) ; 

__attribute__((used)) static void FUNC9(struct intel_engine_cs *engine)
{
	struct drm_i915_private *dev_priv = engine->i915;

	FUNC2(FUNC1(dev_priv) > 2 &&
		(FUNC0(engine, RING_MI_MODE) & MODE_IDLE) == 0);

	FUNC3(engine);

	FUNC5(engine->legacy.ring);
	FUNC4(engine->legacy.ring);

	FUNC7(engine->legacy.timeline);
	FUNC6(engine->legacy.timeline);

	FUNC8(engine);
}