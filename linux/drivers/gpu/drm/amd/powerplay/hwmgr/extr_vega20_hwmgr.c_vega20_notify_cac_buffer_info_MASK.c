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
typedef  int /*<<< orphan*/  uint32_t ;
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_DramLogSetDramAddrHigh ; 
 int /*<<< orphan*/  PPSMC_MSG_DramLogSetDramAddrLow ; 
 int /*<<< orphan*/  PPSMC_MSG_DramLogSetDramSize ; 
 int /*<<< orphan*/  PPSMC_MSG_SetSystemVirtualDramAddrHigh ; 
 int /*<<< orphan*/  PPSMC_MSG_SetSystemVirtualDramAddrLow ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pp_hwmgr *hwmgr,
					uint32_t virtual_addr_low,
					uint32_t virtual_addr_hi,
					uint32_t mc_addr_low,
					uint32_t mc_addr_hi,
					uint32_t size)
{
	FUNC0(hwmgr,
					PPSMC_MSG_SetSystemVirtualDramAddrHigh,
					virtual_addr_hi);
	FUNC0(hwmgr,
					PPSMC_MSG_SetSystemVirtualDramAddrLow,
					virtual_addr_low);
	FUNC0(hwmgr,
					PPSMC_MSG_DramLogSetDramAddrHigh,
					mc_addr_hi);

	FUNC0(hwmgr,
					PPSMC_MSG_DramLogSetDramAddrLow,
					mc_addr_low);

	FUNC0(hwmgr,
					PPSMC_MSG_DramLogSetDramSize,
					size);
	return 0;
}