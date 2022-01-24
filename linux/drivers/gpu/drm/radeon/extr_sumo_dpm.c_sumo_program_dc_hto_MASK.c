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
 int /*<<< orphan*/  CG_SCLK_DPM_CTRL_4 ; 
 int FUNC0 (int) ; 
 int DC_HDC_MASK ; 
 int FUNC1 (int) ; 
 int DC_HU_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int*,int*) ; 
 int FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	u32 cg_sclk_dpm_ctrl_4 = FUNC2(CG_SCLK_DPM_CTRL_4);
	u32 p, u;
	u32 xclk = FUNC5(rdev);

	FUNC4(100000,
			       xclk, 14, &p, &u);

	cg_sclk_dpm_ctrl_4 &= ~(DC_HDC_MASK | DC_HU_MASK);
	cg_sclk_dpm_ctrl_4 |= FUNC0(p) | FUNC1(u);

	FUNC3(CG_SCLK_DPM_CTRL_4, cg_sclk_dpm_ctrl_4);
}