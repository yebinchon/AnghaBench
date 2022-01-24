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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int DYN_GFX_CLK_OFF_EN ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int GLOBAL_PWRMGT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct radeon_device *rdev)
{
	bool dpm_en = false, cg_en = false;

	if (FUNC0(GENERAL_PWRMGT) & GLOBAL_PWRMGT_EN)
		dpm_en = true;
	if (FUNC0(SCLK_PWRMGT_CNTL) & DYN_GFX_CLK_OFF_EN)
		cg_en = true;

	if (dpm_en && !cg_en)
		FUNC1(SCLK_PWRMGT_CNTL, DYN_GFX_CLK_OFF_EN, ~DYN_GFX_CLK_OFF_EN);
}