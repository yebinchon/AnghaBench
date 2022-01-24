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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; int /*<<< orphan*/  i915; int /*<<< orphan*/  mmio_base; struct intel_uncore* uncore; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_IDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  STOP_RING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct intel_uncore*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

int FUNC7(struct intel_engine_cs *engine)
{
	struct intel_uncore *uncore = engine->uncore;
	const u32 base = engine->mmio_base;
	const i915_reg_t mode = FUNC2(base);
	int err;

	if (FUNC1(engine->i915) < 3)
		return -ENODEV;

	FUNC0("%s\n", engine->name);

	FUNC6(uncore, mode, FUNC3(STOP_RING));

	err = 0;
	if (FUNC4(uncore,
					 mode, MODE_IDLE, MODE_IDLE,
					 1000, 0,
					 NULL)) {
		FUNC0("%s: timed out on STOP_RING -> IDLE\n", engine->name);
		err = -ETIMEDOUT;
	}

	/* A final mmio read to let GPU writes be hopefully flushed to memory */
	FUNC5(uncore, mode);

	return err;
}