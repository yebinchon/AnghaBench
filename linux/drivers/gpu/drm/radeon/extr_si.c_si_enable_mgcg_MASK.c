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
 int /*<<< orphan*/  CGTS_SM_CTRL_REG ; 
 int CP_MEM_LS_EN ; 
 int /*<<< orphan*/  CP_MEM_SLP_CNTL ; 
 int LS_OVERRIDE ; 
 int OVERRIDE ; 
 int RADEON_CG_SUPPORT_GFX_CP_LS ; 
 int RADEON_CG_SUPPORT_GFX_MGCG ; 
 int /*<<< orphan*/  RLC_CGTT_MGCG_OVERRIDE ; 
 int /*<<< orphan*/  RLC_SERDES_WR_CTRL ; 
 int /*<<< orphan*/  RLC_SERDES_WR_MASTER_MASK_0 ; 
 int /*<<< orphan*/  RLC_SERDES_WR_MASTER_MASK_1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
			   bool enable)
{
	u32 data, orig, tmp = 0;

	if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_GFX_MGCG)) {
		orig = data = FUNC0(CGTS_SM_CTRL_REG);
		data = 0x96940200;
		if (orig != data)
			FUNC1(CGTS_SM_CTRL_REG, data);

		if (rdev->cg_flags & RADEON_CG_SUPPORT_GFX_CP_LS) {
			orig = data = FUNC0(CP_MEM_SLP_CNTL);
			data |= CP_MEM_LS_EN;
			if (orig != data)
				FUNC1(CP_MEM_SLP_CNTL, data);
		}

		orig = data = FUNC0(RLC_CGTT_MGCG_OVERRIDE);
		data &= 0xffffffc0;
		if (orig != data)
			FUNC1(RLC_CGTT_MGCG_OVERRIDE, data);

		tmp = FUNC2(rdev);

		FUNC1(RLC_SERDES_WR_MASTER_MASK_0, 0xffffffff);
		FUNC1(RLC_SERDES_WR_MASTER_MASK_1, 0xffffffff);
		FUNC1(RLC_SERDES_WR_CTRL, 0x00d000ff);

		FUNC3(rdev, tmp);
	} else {
		orig = data = FUNC0(RLC_CGTT_MGCG_OVERRIDE);
		data |= 0x00000003;
		if (orig != data)
			FUNC1(RLC_CGTT_MGCG_OVERRIDE, data);

		data = FUNC0(CP_MEM_SLP_CNTL);
		if (data & CP_MEM_LS_EN) {
			data &= ~CP_MEM_LS_EN;
			FUNC1(CP_MEM_SLP_CNTL, data);
		}
		orig = data = FUNC0(CGTS_SM_CTRL_REG);
		data |= LS_OVERRIDE | OVERRIDE;
		if (orig != data)
			FUNC1(CGTS_SM_CTRL_REG, data);

		tmp = FUNC2(rdev);

		FUNC1(RLC_SERDES_WR_MASTER_MASK_0, 0xffffffff);
		FUNC1(RLC_SERDES_WR_MASTER_MASK_1, 0xffffffff);
		FUNC1(RLC_SERDES_WR_CTRL, 0x00e000ff);

		FUNC3(rdev, tmp);
	}
}