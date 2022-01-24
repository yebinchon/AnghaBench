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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_MC_LS ; 
 int /*<<< orphan*/  ATC_MISC_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MC_CITF_MISC_RD_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MC_CITF_MISC_VM_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MC_CITF_MISC_WR_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MC_HUB_MISC_SIP_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MC_HUB_MISC_VM_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MC_XPB_CLK_GAT__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_L2_CG__MEM_LS_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmATC_MISC_CG ; 
 int /*<<< orphan*/  mmMC_CITF_MISC_RD_CG ; 
 int /*<<< orphan*/  mmMC_CITF_MISC_VM_CG ; 
 int /*<<< orphan*/  mmMC_CITF_MISC_WR_CG ; 
 int /*<<< orphan*/  mmMC_HUB_MISC_HUB_CG ; 
 int /*<<< orphan*/  mmMC_HUB_MISC_SIP_CG ; 
 int /*<<< orphan*/  mmMC_HUB_MISC_VM_CG ; 
 int /*<<< orphan*/  mmMC_XPB_CLK_GAT ; 
 int /*<<< orphan*/  mmVM_L2_CG ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
				       bool enable)
{
	uint32_t data;

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_LS)) {
		data = FUNC0(mmMC_HUB_MISC_HUB_CG);
		data |= MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_HUB_MISC_HUB_CG, data);

		data = FUNC0(mmMC_HUB_MISC_SIP_CG);
		data |= MC_HUB_MISC_SIP_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_HUB_MISC_SIP_CG, data);

		data = FUNC0(mmMC_HUB_MISC_VM_CG);
		data |= MC_HUB_MISC_VM_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_HUB_MISC_VM_CG, data);

		data = FUNC0(mmMC_XPB_CLK_GAT);
		data |= MC_XPB_CLK_GAT__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_XPB_CLK_GAT, data);

		data = FUNC0(mmATC_MISC_CG);
		data |= ATC_MISC_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmATC_MISC_CG, data);

		data = FUNC0(mmMC_CITF_MISC_WR_CG);
		data |= MC_CITF_MISC_WR_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_CITF_MISC_WR_CG, data);

		data = FUNC0(mmMC_CITF_MISC_RD_CG);
		data |= MC_CITF_MISC_RD_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_CITF_MISC_RD_CG, data);

		data = FUNC0(mmMC_CITF_MISC_VM_CG);
		data |= MC_CITF_MISC_VM_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_CITF_MISC_VM_CG, data);

		data = FUNC0(mmVM_L2_CG);
		data |= VM_L2_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmVM_L2_CG, data);
	} else {
		data = FUNC0(mmMC_HUB_MISC_HUB_CG);
		data &= ~MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_HUB_MISC_HUB_CG, data);

		data = FUNC0(mmMC_HUB_MISC_SIP_CG);
		data &= ~MC_HUB_MISC_SIP_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_HUB_MISC_SIP_CG, data);

		data = FUNC0(mmMC_HUB_MISC_VM_CG);
		data &= ~MC_HUB_MISC_VM_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_HUB_MISC_VM_CG, data);

		data = FUNC0(mmMC_XPB_CLK_GAT);
		data &= ~MC_XPB_CLK_GAT__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_XPB_CLK_GAT, data);

		data = FUNC0(mmATC_MISC_CG);
		data &= ~ATC_MISC_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmATC_MISC_CG, data);

		data = FUNC0(mmMC_CITF_MISC_WR_CG);
		data &= ~MC_CITF_MISC_WR_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_CITF_MISC_WR_CG, data);

		data = FUNC0(mmMC_CITF_MISC_RD_CG);
		data &= ~MC_CITF_MISC_RD_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_CITF_MISC_RD_CG, data);

		data = FUNC0(mmMC_CITF_MISC_VM_CG);
		data &= ~MC_CITF_MISC_VM_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmMC_CITF_MISC_VM_CG, data);

		data = FUNC0(mmVM_L2_CG);
		data &= ~VM_L2_CG__MEM_LS_ENABLE_MASK;
		FUNC1(mmVM_L2_CG, data);
	}
}