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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  guc; } ;
struct intel_gt {TYPE_1__ uc; int /*<<< orphan*/  i915; int /*<<< orphan*/ ** engine_class; } ;

/* Variables and functions */
 size_t COPY_ENGINE_CLASS ; 
 int GEN8_BCS_IRQ_SHIFT ; 
 int GEN8_GT_BCS_IRQ ; 
 int GEN8_GT_GUC_IRQ ; 
 int GEN8_GT_PM_IRQ ; 
 int GEN8_GT_RCS_IRQ ; 
 int GEN8_GT_VCS0_IRQ ; 
 int GEN8_GT_VCS1_IRQ ; 
 int GEN8_GT_VECS_IRQ ; 
 int GEN8_RCS_IRQ_SHIFT ; 
 int GEN8_VCS0_IRQ_SHIFT ; 
 int GEN8_VCS1_IRQ_SHIFT ; 
 int GEN8_VECS_IRQ_SHIFT ; 
 size_t RENDER_CLASS ; 
 size_t VIDEO_DECODE_CLASS ; 
 size_t VIDEO_ENHANCEMENT_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(struct intel_gt *gt, u32 master_ctl, u32 gt_iir[4])
{
	if (master_ctl & (GEN8_GT_RCS_IRQ | GEN8_GT_BCS_IRQ)) {
		FUNC0(gt->engine_class[RENDER_CLASS][0],
			       gt_iir[0] >> GEN8_RCS_IRQ_SHIFT);
		FUNC0(gt->engine_class[COPY_ENGINE_CLASS][0],
			       gt_iir[0] >> GEN8_BCS_IRQ_SHIFT);
	}

	if (master_ctl & (GEN8_GT_VCS0_IRQ | GEN8_GT_VCS1_IRQ)) {
		FUNC0(gt->engine_class[VIDEO_DECODE_CLASS][0],
			       gt_iir[1] >> GEN8_VCS0_IRQ_SHIFT);
		FUNC0(gt->engine_class[VIDEO_DECODE_CLASS][1],
			       gt_iir[1] >> GEN8_VCS1_IRQ_SHIFT);
	}

	if (master_ctl & GEN8_GT_VECS_IRQ) {
		FUNC0(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
			       gt_iir[3] >> GEN8_VECS_IRQ_SHIFT);
	}

	if (master_ctl & (GEN8_GT_PM_IRQ | GEN8_GT_GUC_IRQ)) {
		FUNC1(gt->i915, gt_iir[2]);
		FUNC2(&gt->uc.guc, gt_iir[2] >> 16);
	}
}