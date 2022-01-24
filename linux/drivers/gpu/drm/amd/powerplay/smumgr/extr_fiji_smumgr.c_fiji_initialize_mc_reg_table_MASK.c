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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMC_SEQ_CAS_TIMING ; 
 int /*<<< orphan*/  mmMC_SEQ_CAS_TIMING_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_MISC_TIMING2 ; 
 int /*<<< orphan*/  mmMC_SEQ_MISC_TIMING2_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_TIMING ; 
 int /*<<< orphan*/  mmMC_SEQ_PMG_TIMING_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_RAS_TIMING ; 
 int /*<<< orphan*/  mmMC_SEQ_RAS_TIMING_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D0 ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D0_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D1 ; 
 int /*<<< orphan*/  mmMC_SEQ_RD_CTL_D1_LP ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_D1 ; 
 int /*<<< orphan*/  mmMC_SEQ_WR_CTL_D1_LP ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{

	/* Program additional LP registers
	 * that are no longer programmed by VBIOS
	 */
	FUNC1(hwmgr->device, mmMC_SEQ_RAS_TIMING_LP,
			FUNC0(hwmgr->device, mmMC_SEQ_RAS_TIMING));
	FUNC1(hwmgr->device, mmMC_SEQ_CAS_TIMING_LP,
			FUNC0(hwmgr->device, mmMC_SEQ_CAS_TIMING));
	FUNC1(hwmgr->device, mmMC_SEQ_MISC_TIMING2_LP,
			FUNC0(hwmgr->device, mmMC_SEQ_MISC_TIMING2));
	FUNC1(hwmgr->device, mmMC_SEQ_WR_CTL_D1_LP,
			FUNC0(hwmgr->device, mmMC_SEQ_WR_CTL_D1));
	FUNC1(hwmgr->device, mmMC_SEQ_RD_CTL_D0_LP,
			FUNC0(hwmgr->device, mmMC_SEQ_RD_CTL_D0));
	FUNC1(hwmgr->device, mmMC_SEQ_RD_CTL_D1_LP,
			FUNC0(hwmgr->device, mmMC_SEQ_RD_CTL_D1));
	FUNC1(hwmgr->device, mmMC_SEQ_PMG_TIMING_LP,
			FUNC0(hwmgr->device, mmMC_SEQ_PMG_TIMING));

	return 0;
}