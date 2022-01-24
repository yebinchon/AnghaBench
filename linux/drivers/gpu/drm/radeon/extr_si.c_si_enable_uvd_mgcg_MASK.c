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
 scalar_t__ CG_CGTT_LOCAL_0 ; 
 scalar_t__ CG_CGTT_LOCAL_1 ; 
 int DCM ; 
 int RADEON_CG_SUPPORT_UVD_MGCG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SMC_CG_IND_START ; 
 int /*<<< orphan*/  UVD_CGC_CTRL ; 
 int /*<<< orphan*/  UVD_CGC_MEM_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
			       bool enable)
{
	u32 orig, data, tmp;

	if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_UVD_MGCG)) {
		tmp = FUNC1(UVD_CGC_MEM_CTRL);
		tmp |= 0x3fff;
		FUNC4(UVD_CGC_MEM_CTRL, tmp);

		orig = data = FUNC0(UVD_CGC_CTRL);
		data |= DCM;
		if (orig != data)
			FUNC2(UVD_CGC_CTRL, data);

		FUNC3(SMC_CG_IND_START + CG_CGTT_LOCAL_0, 0);
		FUNC3(SMC_CG_IND_START + CG_CGTT_LOCAL_1, 0);
	} else {
		tmp = FUNC1(UVD_CGC_MEM_CTRL);
		tmp &= ~0x3fff;
		FUNC4(UVD_CGC_MEM_CTRL, tmp);

		orig = data = FUNC0(UVD_CGC_CTRL);
		data &= ~DCM;
		if (orig != data)
			FUNC2(UVD_CGC_CTRL, data);

		FUNC3(SMC_CG_IND_START + CG_CGTT_LOCAL_0, 0xffffffff);
		FUNC3(SMC_CG_IND_START + CG_CGTT_LOCAL_1, 0xffffffff);
	}
}