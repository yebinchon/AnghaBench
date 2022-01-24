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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int class; int /*<<< orphan*/  instance; int /*<<< orphan*/  i915; struct intel_uncore* uncore; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_2__ {int vdbox_sfc_access; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  GEN11_VCS_SFC_FORCED_LOCK_BIT ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  GEN11_VECS_SFC_FORCED_LOCK_BIT ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
#define  VIDEO_DECODE_CLASS 129 
#define  VIDEO_ENHANCEMENT_CLASS 128 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_engine_cs *engine)
{
	struct intel_uncore *uncore = engine->uncore;
	u8 vdbox_sfc_access = FUNC3(engine->i915)->vdbox_sfc_access;
	i915_reg_t sfc_forced_lock;
	u32 sfc_forced_lock_bit;

	switch (engine->class) {
	case VIDEO_DECODE_CLASS:
		if ((FUNC0(engine->instance) & vdbox_sfc_access) == 0)
			return;

		sfc_forced_lock = FUNC1(engine);
		sfc_forced_lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;
		break;

	case VIDEO_ENHANCEMENT_CLASS:
		sfc_forced_lock = FUNC2(engine);
		sfc_forced_lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;
		break;

	default:
		return;
	}

	FUNC4(uncore, sfc_forced_lock, sfc_forced_lock_bit);
}