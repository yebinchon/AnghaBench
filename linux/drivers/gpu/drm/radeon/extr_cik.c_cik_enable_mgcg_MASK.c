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
struct radeon_device {int cg_flags; } ;

/* Variables and functions */
 int BPM_ADDR_MASK ; 
 int CGTS_LS_OVERRIDE ; 
 int CGTS_OVERRIDE ; 
 int /*<<< orphan*/  CGTS_SM_CTRL_REG ; 
 int CP_MEM_LS_EN ; 
 int /*<<< orphan*/  CP_MEM_SLP_CNTL ; 
 int MGCG_OVERRIDE_0 ; 
 int MGCG_OVERRIDE_1 ; 
 int FUNC0 (int) ; 
 int ON_MONITOR_ADD_EN ; 
 int ON_MONITOR_ADD_MASK ; 
 int RADEON_CG_SUPPORT_GFX_CGTS ; 
 int RADEON_CG_SUPPORT_GFX_CGTS_LS ; 
 int RADEON_CG_SUPPORT_GFX_CP_LS ; 
 int RADEON_CG_SUPPORT_GFX_MGCG ; 
 int RADEON_CG_SUPPORT_GFX_MGLS ; 
 int /*<<< orphan*/  RLC_CGTT_MGCG_OVERRIDE ; 
 int RLC_MEM_LS_EN ; 
 int /*<<< orphan*/  RLC_MEM_SLP_CNTL ; 
 int /*<<< orphan*/  RLC_SERDES_WR_CTRL ; 
 int /*<<< orphan*/  RLC_SERDES_WR_CU_MASTER_MASK ; 
 int /*<<< orphan*/  RLC_SERDES_WR_NONCU_MASTER_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int SM_MODE_ENABLE ; 
 int SM_MODE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev, bool enable)
{
	u32 data, orig, tmp = 0;

	if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_GFX_MGCG)) {
		if (rdev->cg_flags & RADEON_CG_SUPPORT_GFX_MGLS) {
			if (rdev->cg_flags & RADEON_CG_SUPPORT_GFX_CP_LS) {
				orig = data = FUNC1(CP_MEM_SLP_CNTL);
				data |= CP_MEM_LS_EN;
				if (orig != data)
					FUNC3(CP_MEM_SLP_CNTL, data);
			}
		}

		orig = data = FUNC1(RLC_CGTT_MGCG_OVERRIDE);
		data |= 0x00000001;
		data &= 0xfffffffd;
		if (orig != data)
			FUNC3(RLC_CGTT_MGCG_OVERRIDE, data);

		tmp = FUNC4(rdev);

		FUNC5(rdev, 0xffffffff, 0xffffffff);
		FUNC3(RLC_SERDES_WR_CU_MASTER_MASK, 0xffffffff);
		FUNC3(RLC_SERDES_WR_NONCU_MASTER_MASK, 0xffffffff);
		data = BPM_ADDR_MASK | MGCG_OVERRIDE_0;
		FUNC3(RLC_SERDES_WR_CTRL, data);

		FUNC6(rdev, tmp);

		if (rdev->cg_flags & RADEON_CG_SUPPORT_GFX_CGTS) {
			orig = data = FUNC1(CGTS_SM_CTRL_REG);
			data &= ~SM_MODE_MASK;
			data |= FUNC2(0x2);
			data |= SM_MODE_ENABLE;
			data &= ~CGTS_OVERRIDE;
			if ((rdev->cg_flags & RADEON_CG_SUPPORT_GFX_MGLS) &&
			    (rdev->cg_flags & RADEON_CG_SUPPORT_GFX_CGTS_LS))
				data &= ~CGTS_LS_OVERRIDE;
			data &= ~ON_MONITOR_ADD_MASK;
			data |= ON_MONITOR_ADD_EN;
			data |= FUNC0(0x96);
			if (orig != data)
				FUNC3(CGTS_SM_CTRL_REG, data);
		}
	} else {
		orig = data = FUNC1(RLC_CGTT_MGCG_OVERRIDE);
		data |= 0x00000003;
		if (orig != data)
			FUNC3(RLC_CGTT_MGCG_OVERRIDE, data);

		data = FUNC1(RLC_MEM_SLP_CNTL);
		if (data & RLC_MEM_LS_EN) {
			data &= ~RLC_MEM_LS_EN;
			FUNC3(RLC_MEM_SLP_CNTL, data);
		}

		data = FUNC1(CP_MEM_SLP_CNTL);
		if (data & CP_MEM_LS_EN) {
			data &= ~CP_MEM_LS_EN;
			FUNC3(CP_MEM_SLP_CNTL, data);
		}

		orig = data = FUNC1(CGTS_SM_CTRL_REG);
		data |= CGTS_OVERRIDE | CGTS_LS_OVERRIDE;
		if (orig != data)
			FUNC3(CGTS_SM_CTRL_REG, data);

		tmp = FUNC4(rdev);

		FUNC5(rdev, 0xffffffff, 0xffffffff);
		FUNC3(RLC_SERDES_WR_CU_MASTER_MASK, 0xffffffff);
		FUNC3(RLC_SERDES_WR_NONCU_MASTER_MASK, 0xffffffff);
		data = BPM_ADDR_MASK | MGCG_OVERRIDE_1;
		FUNC3(RLC_SERDES_WR_CTRL, data);

		FUNC6(rdev, tmp);
	}
}