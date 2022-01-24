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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmVCE_CGTT_CLK_OVERRIDE ; 
 int /*<<< orphan*/  mmVCE_CLOCK_GATING_B ; 
 int /*<<< orphan*/  mmVCE_UENC_CLOCK_GATING ; 
 int /*<<< orphan*/  mmVCE_UENC_REG_CLOCK_GATING ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev, bool gated)
{
	u32 orig, tmp;

/* LMI_MC/LMI_UMC always set in dynamic,
 * set {CGC_*_GATE_MODE, CGC_*_SW_GATE} = {0, 0}
 */
	tmp = FUNC0(mmVCE_CLOCK_GATING_B);
	tmp &= ~0x00060006;

/* Exception for ECPU, IH, SEM, SYS blocks needs to be turned on/off by SW */
	if (gated) {
		tmp |= 0xe10000;
		FUNC1(mmVCE_CLOCK_GATING_B, tmp);
	} else {
		tmp |= 0xe1;
		tmp &= ~0xe10000;
		FUNC1(mmVCE_CLOCK_GATING_B, tmp);
	}

	orig = tmp = FUNC0(mmVCE_UENC_CLOCK_GATING);
	tmp &= ~0x1fe000;
	tmp &= ~0xff000000;
	if (tmp != orig)
		FUNC1(mmVCE_UENC_CLOCK_GATING, tmp);

	orig = tmp = FUNC0(mmVCE_UENC_REG_CLOCK_GATING);
	tmp &= ~0x3fc;
	if (tmp != orig)
		FUNC1(mmVCE_UENC_REG_CLOCK_GATING, tmp);

	/* set VCE_UENC_REG_CLOCK_GATING always in dynamic mode */
	FUNC1(mmVCE_UENC_REG_CLOCK_GATING, 0x00);

	if(gated)
		FUNC1(mmVCE_CGTT_CLK_OVERRIDE, 0);
}