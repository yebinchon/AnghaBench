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
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int pm_ier; int pm_imr; struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  GEN11_BCS_RSVD_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_RCS0_RSVD_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_RENDER_COPY_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_VCS0_VCS1_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_VCS2_VCS3_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_VCS_VECS_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_VECS0_VECS1_INTR_MASK ; 
 int GT_CONTEXT_SWITCH_INTERRUPT ; 
 int GT_RENDER_USER_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int const) ; 

void FUNC2(struct intel_gt *gt)
{
	const u32 irqs = GT_RENDER_USER_INTERRUPT | GT_CONTEXT_SWITCH_INTERRUPT;
	struct intel_uncore *uncore = gt->uncore;
	const u32 dmask = irqs << 16 | irqs;
	const u32 smask = irqs << 16;

	FUNC0(irqs & 0xffff0000);

	/* Enable RCS, BCS, VCS and VECS class interrupts. */
	FUNC1(uncore, GEN11_RENDER_COPY_INTR_ENABLE, dmask);
	FUNC1(uncore, GEN11_VCS_VECS_INTR_ENABLE, dmask);

	/* Unmask irqs on RCS, BCS, VCS and VECS engines. */
	FUNC1(uncore, GEN11_RCS0_RSVD_INTR_MASK, ~smask);
	FUNC1(uncore, GEN11_BCS_RSVD_INTR_MASK, ~smask);
	FUNC1(uncore, GEN11_VCS0_VCS1_INTR_MASK, ~dmask);
	FUNC1(uncore, GEN11_VCS2_VCS3_INTR_MASK, ~dmask);
	FUNC1(uncore, GEN11_VECS0_VECS1_INTR_MASK, ~dmask);

	/*
	 * RPS interrupts will get enabled/disabled on demand when RPS itself
	 * is enabled/disabled.
	 */
	gt->pm_ier = 0x0;
	gt->pm_imr = ~gt->pm_ier;
	FUNC1(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
	FUNC1(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);

	/* Same thing for GuC interrupts */
	FUNC1(uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
	FUNC1(uncore, GEN11_GUC_SG_INTR_MASK,  ~0);
}