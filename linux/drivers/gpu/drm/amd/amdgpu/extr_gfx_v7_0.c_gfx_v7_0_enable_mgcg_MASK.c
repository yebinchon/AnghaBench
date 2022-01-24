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
struct amdgpu_device {int cg_flags; int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_GFX_CGTS ; 
 int AMD_CG_SUPPORT_GFX_CGTS_LS ; 
 int AMD_CG_SUPPORT_GFX_CP_LS ; 
 int AMD_CG_SUPPORT_GFX_MGCG ; 
 int AMD_CG_SUPPORT_GFX_MGLS ; 
 int CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK ; 
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK ; 
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD_MASK ; 
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT ; 
 int CGTS_SM_CTRL_REG__OVERRIDE_MASK ; 
 int CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK ; 
 int CGTS_SM_CTRL_REG__SM_MODE_MASK ; 
 int CGTS_SM_CTRL_REG__SM_MODE__SHIFT ; 
 int CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK ; 
 int RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK ; 
 int RLC_SERDES_WR_CTRL__BPM_ADDR_MASK ; 
 int RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_0_MASK ; 
 int RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_1_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  mmCGTS_SM_CTRL_REG ; 
 int /*<<< orphan*/  mmCP_MEM_SLP_CNTL ; 
 int /*<<< orphan*/  mmRLC_CGTT_MGCG_OVERRIDE ; 
 int /*<<< orphan*/  mmRLC_MEM_SLP_CNTL ; 
 int /*<<< orphan*/  mmRLC_SERDES_WR_CTRL ; 
 int /*<<< orphan*/  mmRLC_SERDES_WR_CU_MASTER_MASK ; 
 int /*<<< orphan*/  mmRLC_SERDES_WR_NONCU_MASTER_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_device *adev, bool enable)
{
	u32 data, orig, tmp = 0;

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGCG)) {
		if (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) {
			if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CP_LS) {
				orig = data = FUNC0(mmCP_MEM_SLP_CNTL);
				data |= CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK;
				if (orig != data)
					FUNC1(mmCP_MEM_SLP_CNTL, data);
			}
		}

		orig = data = FUNC0(mmRLC_CGTT_MGCG_OVERRIDE);
		data |= 0x00000001;
		data &= 0xfffffffd;
		if (orig != data)
			FUNC1(mmRLC_CGTT_MGCG_OVERRIDE, data);

		tmp = FUNC2(adev);

		FUNC5(&adev->grbm_idx_mutex);
		FUNC3(adev, 0xffffffff, 0xffffffff, 0xffffffff);
		FUNC1(mmRLC_SERDES_WR_CU_MASTER_MASK, 0xffffffff);
		FUNC1(mmRLC_SERDES_WR_NONCU_MASTER_MASK, 0xffffffff);
		data = RLC_SERDES_WR_CTRL__BPM_ADDR_MASK |
			RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_0_MASK;
		FUNC1(mmRLC_SERDES_WR_CTRL, data);
		FUNC6(&adev->grbm_idx_mutex);

		FUNC4(adev, tmp);

		if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGTS) {
			orig = data = FUNC0(mmCGTS_SM_CTRL_REG);
			data &= ~CGTS_SM_CTRL_REG__SM_MODE_MASK;
			data |= (0x2 << CGTS_SM_CTRL_REG__SM_MODE__SHIFT);
			data |= CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK;
			data &= ~CGTS_SM_CTRL_REG__OVERRIDE_MASK;
			if ((adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) &&
			    (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGTS_LS))
				data &= ~CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK;
			data &= ~CGTS_SM_CTRL_REG__ON_MONITOR_ADD_MASK;
			data |= CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK;
			data |= (0x96 << CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT);
			if (orig != data)
				FUNC1(mmCGTS_SM_CTRL_REG, data);
		}
	} else {
		orig = data = FUNC0(mmRLC_CGTT_MGCG_OVERRIDE);
		data |= 0x00000003;
		if (orig != data)
			FUNC1(mmRLC_CGTT_MGCG_OVERRIDE, data);

		data = FUNC0(mmRLC_MEM_SLP_CNTL);
		if (data & RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK) {
			data &= ~RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK;
			FUNC1(mmRLC_MEM_SLP_CNTL, data);
		}

		data = FUNC0(mmCP_MEM_SLP_CNTL);
		if (data & CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK) {
			data &= ~CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK;
			FUNC1(mmCP_MEM_SLP_CNTL, data);
		}

		orig = data = FUNC0(mmCGTS_SM_CTRL_REG);
		data |= CGTS_SM_CTRL_REG__OVERRIDE_MASK | CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK;
		if (orig != data)
			FUNC1(mmCGTS_SM_CTRL_REG, data);

		tmp = FUNC2(adev);

		FUNC5(&adev->grbm_idx_mutex);
		FUNC3(adev, 0xffffffff, 0xffffffff, 0xffffffff);
		FUNC1(mmRLC_SERDES_WR_CU_MASTER_MASK, 0xffffffff);
		FUNC1(mmRLC_SERDES_WR_NONCU_MASTER_MASK, 0xffffffff);
		data = RLC_SERDES_WR_CTRL__BPM_ADDR_MASK | RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_1_MASK;
		FUNC1(mmRLC_SERDES_WR_CTRL, data);
		FUNC6(&adev->grbm_idx_mutex);

		FUNC4(adev, tmp);
	}
}