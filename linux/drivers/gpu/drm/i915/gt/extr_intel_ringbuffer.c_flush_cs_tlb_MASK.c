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
struct intel_engine_cs {int /*<<< orphan*/  name; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 int INSTPM_SYNC_FLUSH ; 
 int INSTPM_TLB_INVALIDATE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int) ; 
 int MODE_IDLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_MI_MODE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct intel_engine_cs *engine)
{
	struct drm_i915_private *dev_priv = engine->i915;

	if (!FUNC3(dev_priv, 6, 7))
		return;

	/* ring should be idle before issuing a sync flush*/
	FUNC5((FUNC1(engine, RING_MI_MODE) & MODE_IDLE) == 0);

	FUNC2(engine, RING_INSTPM,
		     FUNC6(INSTPM_TLB_INVALIDATE |
					INSTPM_SYNC_FLUSH));
	if (FUNC7(engine->uncore,
				    FUNC4(engine->mmio_base),
				    INSTPM_SYNC_FLUSH, 0,
				    1000))
		FUNC0("%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
			  engine->name);
}