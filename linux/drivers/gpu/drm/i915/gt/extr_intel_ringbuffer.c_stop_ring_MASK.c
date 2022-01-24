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
 int FUNC1 (struct intel_engine_cs*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int) ; 
 int HEAD_ADDR ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  MODE_IDLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STOP_RING ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC10(struct intel_engine_cs *engine)
{
	struct drm_i915_private *dev_priv = engine->i915;

	if (FUNC3(dev_priv) > 2) {
		FUNC2(engine,
			     RING_MI_MODE, FUNC8(STOP_RING));
		if (FUNC9(engine->uncore,
					    FUNC6(engine->mmio_base),
					    MODE_IDLE,
					    MODE_IDLE,
					    1000)) {
			FUNC0("%s : timed out trying to stop ring\n",
				  engine->name);

			/*
			 * Sometimes we observe that the idle flag is not
			 * set even though the ring is empty. So double
			 * check before giving up.
			 */
			if (FUNC1(engine, RING_HEAD) !=
			    FUNC1(engine, RING_TAIL))
				return false;
		}
	}

	FUNC2(engine, RING_HEAD, FUNC1(engine, RING_TAIL));

	FUNC2(engine, RING_HEAD, 0);
	FUNC2(engine, RING_TAIL, 0);

	/* The ring must be empty before it is disabled */
	FUNC2(engine, RING_CTL, 0);

	return (FUNC1(engine, RING_HEAD) & HEAD_ADDR) == 0;
}