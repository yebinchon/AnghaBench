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
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET_BUSY_CNT ; 
 int /*<<< orphan*/  RESET_SCLK_CNT ; 
 int /*<<< orphan*/  SCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ixCG_FREQ_TRAN_VOTING_0 ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{
	int i;

	/* Reset voting clients before disabling DPM */
	FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			SCLK_PWRMGT_CNTL, RESET_SCLK_CNT, 1);
	FUNC0(hwmgr->device, CGS_IND_REG__SMC,
			SCLK_PWRMGT_CNTL, RESET_BUSY_CNT, 1);

	for (i = 0; i < 8; i++)
		FUNC1(hwmgr->device, CGS_IND_REG__SMC,
				ixCG_FREQ_TRAN_VOTING_0 + i * 4, 0);

	return 0;
}