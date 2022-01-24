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
typedef  int uint32_t ;
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_BIF_MGCG ; 
 int CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK ; 
 int CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK ; 
 int CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK ; 
 int CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK ; 
 int CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK ; 
 int CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  smnCPM_CONTROL ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
						       bool enable)
{
	uint32_t def, data;

	def = data = FUNC0(smnCPM_CONTROL);
	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG)) {
		data |= (CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK |
			 CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK |
			 CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK |
			 CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK |
			 CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK |
			 CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK);
	} else {
		data &= ~(CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK |
			  CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK |
			  CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK |
			  CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK |
			  CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK |
			  CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK);
	}

	if (def != data)
		FUNC1(smnCPM_CONTROL, data);
}