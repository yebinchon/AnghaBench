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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  vma; } ;
struct intel_engine_cs {TYPE_1__ status_page; int /*<<< orphan*/  i915; int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  GEN11_GFX_DISABLE_LEGACY_MODE ; 
 int /*<<< orphan*/  GFX_RUN_LIST_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_HWS_PGA ; 
 int /*<<< orphan*/  RING_MI_MODE ; 
 int /*<<< orphan*/  RING_MODE_GEN7 ; 
 int /*<<< orphan*/  STOP_RING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_engine_cs*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct intel_engine_cs *engine)
{
	u32 mode;

	FUNC5(engine->uncore, FORCEWAKE_ALL);

	FUNC7(engine, ~0u); /* HWSTAM */

	if (FUNC2(engine->i915) >= 11)
		mode = FUNC4(GEN11_GFX_DISABLE_LEGACY_MODE);
	else
		mode = FUNC4(GFX_RUN_LIST_ENABLE);
	FUNC1(engine, RING_MODE_GEN7, mode);

	FUNC1(engine, RING_MI_MODE, FUNC3(STOP_RING));

	FUNC1(engine,
			RING_HWS_PGA,
			FUNC6(engine->status_page.vma));
	FUNC0(engine, RING_HWS_PGA);
}