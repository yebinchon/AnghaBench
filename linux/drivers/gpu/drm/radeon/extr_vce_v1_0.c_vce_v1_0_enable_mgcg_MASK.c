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
 int CGC_DYN_CLOCK_MODE ; 
 int RADEON_CG_SUPPORT_VCE_MGCG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE_CLOCK_GATING_A ; 
 int /*<<< orphan*/  VCE_UENC_CLOCK_GATING ; 
 int /*<<< orphan*/  VCE_UENC_REG_CLOCK_GATING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct radeon_device *rdev, bool enable)
{
	u32 tmp;

	if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_VCE_MGCG)) {
		tmp = FUNC0(VCE_CLOCK_GATING_A);
		tmp |= CGC_DYN_CLOCK_MODE;
		FUNC1(VCE_CLOCK_GATING_A, tmp);

		tmp = FUNC0(VCE_UENC_CLOCK_GATING);
		tmp &= ~0x1ff000;
		tmp |= 0xff800000;
		FUNC1(VCE_UENC_CLOCK_GATING, tmp);

		tmp = FUNC0(VCE_UENC_REG_CLOCK_GATING);
		tmp &= ~0x3ff;
		FUNC1(VCE_UENC_REG_CLOCK_GATING, tmp);
	} else {
		tmp = FUNC0(VCE_CLOCK_GATING_A);
		tmp &= ~CGC_DYN_CLOCK_MODE;
		FUNC1(VCE_CLOCK_GATING_A, tmp);

		tmp = FUNC0(VCE_UENC_CLOCK_GATING);
		tmp |= 0x1ff000;
		tmp &= ~0xff800000;
		FUNC1(VCE_UENC_CLOCK_GATING, tmp);

		tmp = FUNC0(VCE_UENC_REG_CLOCK_GATING);
		tmp |= 0x3ff;
		FUNC1(VCE_UENC_REG_CLOCK_GATING, tmp);
	}
}