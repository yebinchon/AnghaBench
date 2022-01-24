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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SCLK_DPM_CTRL_5 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int TT_TP_MASK ; 
 int FUNC2 (int) ; 
 int TT_TU_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int*,int*) ; 
 int FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	u32 xclk = FUNC5(rdev);
	u32 p, u;
	u32 cg_sclk_dpm_ctrl_5 = FUNC0(CG_SCLK_DPM_CTRL_5);

	FUNC4(1000,
			       xclk, 16, &p, &u);

	cg_sclk_dpm_ctrl_5 &= ~(TT_TP_MASK | TT_TU_MASK);
	cg_sclk_dpm_ctrl_5 |= FUNC1(p) | FUNC2(u);

	FUNC3(CG_SCLK_DPM_CTRL_5, cg_sclk_dpm_ctrl_5);
}