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
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int class; int /*<<< orphan*/  instance; int /*<<< orphan*/  i915; struct intel_uncore* uncore; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_2__ {int vdbox_sfc_access; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*) ; 
 int GEN11_VCS_SFC_FORCED_LOCK_BIT ; 
 int GEN11_VCS_SFC_LOCK_ACK_BIT ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int GEN11_VCS_SFC_USAGE_BIT ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_cs*) ; 
 int GEN11_VECS_SFC_FORCED_LOCK_BIT ; 
 int /*<<< orphan*/  FUNC6 (struct intel_engine_cs*) ; 
 int GEN11_VECS_SFC_LOCK_ACK_BIT ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_engine_cs*) ; 
 int GEN11_VECS_SFC_USAGE_BIT ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
#define  VIDEO_DECODE_CLASS 129 
#define  VIDEO_ENHANCEMENT_CLASS 128 
 scalar_t__ FUNC10 (struct intel_uncore*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC13(struct intel_engine_cs *engine)
{
	struct intel_uncore *uncore = engine->uncore;
	u8 vdbox_sfc_access = FUNC9(engine->i915)->vdbox_sfc_access;
	i915_reg_t sfc_forced_lock, sfc_forced_lock_ack;
	u32 sfc_forced_lock_bit, sfc_forced_lock_ack_bit;
	i915_reg_t sfc_usage;
	u32 sfc_usage_bit;
	u32 sfc_reset_bit;

	switch (engine->class) {
	case VIDEO_DECODE_CLASS:
		if ((FUNC0(engine->instance) & vdbox_sfc_access) == 0)
			return 0;

		sfc_forced_lock = FUNC2(engine);
		sfc_forced_lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;

		sfc_forced_lock_ack = FUNC3(engine);
		sfc_forced_lock_ack_bit  = GEN11_VCS_SFC_LOCK_ACK_BIT;

		sfc_usage = FUNC3(engine);
		sfc_usage_bit = GEN11_VCS_SFC_USAGE_BIT;
		sfc_reset_bit = FUNC4(engine->instance);
		break;

	case VIDEO_ENHANCEMENT_CLASS:
		sfc_forced_lock = FUNC5(engine);
		sfc_forced_lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;

		sfc_forced_lock_ack = FUNC6(engine);
		sfc_forced_lock_ack_bit  = GEN11_VECS_SFC_LOCK_ACK_BIT;

		sfc_usage = FUNC8(engine);
		sfc_usage_bit = GEN11_VECS_SFC_USAGE_BIT;
		sfc_reset_bit = FUNC7(engine->instance);
		break;

	default:
		return 0;
	}

	/*
	 * Tell the engine that a software reset is going to happen. The engine
	 * will then try to force lock the SFC (if currently locked, it will
	 * remain so until we tell the engine it is safe to unlock; if currently
	 * unlocked, it will ignore this and all new lock requests). If SFC
	 * ends up being locked to the engine we want to reset, we have to reset
	 * it as well (we will unlock it once the reset sequence is completed).
	 */
	FUNC12(uncore, sfc_forced_lock, sfc_forced_lock_bit);

	if (FUNC10(uncore,
					 sfc_forced_lock_ack,
					 sfc_forced_lock_ack_bit,
					 sfc_forced_lock_ack_bit,
					 1000, 0, NULL)) {
		FUNC1("Wait for SFC forced lock ack failed\n");
		return 0;
	}

	if (FUNC11(uncore, sfc_usage) & sfc_usage_bit)
		return sfc_reset_bit;

	return 0;
}