#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_vgpu_workload {scalar_t__ ring_id; int oactxctrl; int* flex_mmio; TYPE_2__* vgpu; } ;
struct TYPE_6__ {int ctx_oactxctrl_offset; int ctx_flexeu0_offset; } ;
struct drm_i915_private {TYPE_3__ perf; } ;
struct TYPE_5__ {TYPE_1__* gvt; } ;
struct TYPE_4__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  EU_PERF_CNTL0 ; 
 int /*<<< orphan*/  EU_PERF_CNTL1 ; 
 int /*<<< orphan*/  EU_PERF_CNTL2 ; 
 int /*<<< orphan*/  EU_PERF_CNTL3 ; 
 int /*<<< orphan*/  EU_PERF_CNTL4 ; 
 int /*<<< orphan*/  EU_PERF_CNTL5 ; 
 int /*<<< orphan*/  EU_PERF_CNTL6 ; 
 int /*<<< orphan*/  GEN8_OACTXCONTROL ; 
 scalar_t__ RCS0 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct intel_vgpu_workload *workload,
		u32 *reg_state, bool save)
{
	struct drm_i915_private *dev_priv = workload->vgpu->gvt->dev_priv;
	u32 ctx_oactxctrl = dev_priv->perf.ctx_oactxctrl_offset;
	u32 ctx_flexeu0 = dev_priv->perf.ctx_flexeu0_offset;
	int i = 0;
	u32 flex_mmio[] = {
		FUNC1(EU_PERF_CNTL0),
		FUNC1(EU_PERF_CNTL1),
		FUNC1(EU_PERF_CNTL2),
		FUNC1(EU_PERF_CNTL3),
		FUNC1(EU_PERF_CNTL4),
		FUNC1(EU_PERF_CNTL5),
		FUNC1(EU_PERF_CNTL6),
	};

	if (workload->ring_id != RCS0)
		return;

	if (save) {
		workload->oactxctrl = reg_state[ctx_oactxctrl + 1];

		for (i = 0; i < FUNC0(workload->flex_mmio); i++) {
			u32 state_offset = ctx_flexeu0 + i * 2;

			workload->flex_mmio[i] = reg_state[state_offset + 1];
		}
	} else {
		reg_state[ctx_oactxctrl] =
			FUNC1(GEN8_OACTXCONTROL);
		reg_state[ctx_oactxctrl + 1] = workload->oactxctrl;

		for (i = 0; i < FUNC0(workload->flex_mmio); i++) {
			u32 state_offset = ctx_flexeu0 + i * 2;
			u32 mmio = flex_mmio[i];

			reg_state[state_offset] = mmio;
			reg_state[state_offset + 1] = workload->flex_mmio[i];
		}
	}
}