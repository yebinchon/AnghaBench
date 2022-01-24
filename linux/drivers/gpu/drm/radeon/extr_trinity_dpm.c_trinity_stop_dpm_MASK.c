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
 int /*<<< orphan*/  CG_CG_VOLTAGE_CNTL ; 
 int /*<<< orphan*/  EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SCLK_DPM_EN_MASK ; 
 int /*<<< orphan*/  SMU_SCLK_DPM_CNTL ; 
 int VOLTAGE_CHG_EN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	u32 sclk_dpm_cntl;

	FUNC1(CG_CG_VOLTAGE_CNTL, EN, ~EN);

	sclk_dpm_cntl = FUNC0(SMU_SCLK_DPM_CNTL);
	sclk_dpm_cntl &= ~(SCLK_DPM_EN_MASK | VOLTAGE_CHG_EN_MASK);
	FUNC2(SMU_SCLK_DPM_CNTL, sclk_dpm_cntl);

	FUNC3(rdev, false);
}