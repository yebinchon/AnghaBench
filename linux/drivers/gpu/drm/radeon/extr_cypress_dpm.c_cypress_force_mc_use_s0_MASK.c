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
struct TYPE_2__ {int /*<<< orphan*/  mclk; } ;
struct rv7xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {scalar_t__ family; int num_crtc; int usec_timeout; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CG_SEQ_REQ_MASK ; 
 scalar_t__ CHIP_CYPRESS ; 
 scalar_t__ CHIP_HEMLOCK ; 
 int /*<<< orphan*/  MC_CG_CONFIG ; 
 int /*<<< orphan*/  MC_CG_CONFIG_MCD ; 
 int MC_CG_SEQ_DRAMCONF_S0 ; 
 int MC_CG_SEQ_YCLK_RESUME ; 
 int MC_CG_SEQ_YCLK_SUSPEND ; 
 int /*<<< orphan*/  MC_CONFIG ; 
 int /*<<< orphan*/  MC_CONFIG_MCD ; 
 int /*<<< orphan*/  MC_SEQ_CG ; 
 int /*<<< orphan*/  MC_SEQ_STATUS_M ; 
 int PMG_PWRSTATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 struct rv7xx_ps* FUNC9 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct radeon_device *rdev,
				    struct radeon_ps *radeon_boot_state)
{
	struct rv7xx_ps *boot_state = FUNC9(radeon_boot_state);
	u32 strobe_mode;
	u32 mc_seq_cg;
	int i;

	FUNC4(rdev);
	FUNC7(rdev);

	if ((rdev->family == CHIP_CYPRESS) ||
	    (rdev->family == CHIP_HEMLOCK)) {
		FUNC3(MC_CONFIG_MCD, 0xf);
		FUNC3(MC_CG_CONFIG_MCD, 0xf);
	} else {
		FUNC3(MC_CONFIG, 0xf);
		FUNC3(MC_CG_CONFIG, 0xf);
	}

	for (i = 0; i < rdev->num_crtc; i++)
		FUNC8(rdev, i);

	FUNC3(MC_SEQ_CG, MC_CG_SEQ_YCLK_SUSPEND);
	FUNC6(rdev, MC_CG_SEQ_YCLK_SUSPEND);

	strobe_mode = FUNC5(rdev,
						       boot_state->low.mclk);

	mc_seq_cg = FUNC0(MC_CG_SEQ_DRAMCONF_S0);
	mc_seq_cg |= FUNC2(strobe_mode);
	FUNC3(MC_SEQ_CG, mc_seq_cg);

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (!(FUNC1(MC_SEQ_STATUS_M) & PMG_PWRSTATE))
			break;
		FUNC10(1);
	}

	mc_seq_cg &= ~CG_SEQ_REQ_MASK;
	mc_seq_cg |= FUNC0(MC_CG_SEQ_YCLK_RESUME);
	FUNC3(MC_SEQ_CG, mc_seq_cg);

	FUNC6(rdev, MC_CG_SEQ_YCLK_RESUME);
}