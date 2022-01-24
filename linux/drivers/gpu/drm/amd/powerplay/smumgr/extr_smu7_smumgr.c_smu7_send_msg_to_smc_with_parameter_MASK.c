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
typedef  int /*<<< orphan*/  uint16_t ;
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_RESP ; 
 int /*<<< orphan*/  SMC_RESP_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMC_MSG_ARG_0 ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

int FUNC3(struct pp_hwmgr *hwmgr, uint16_t msg, uint32_t parameter)
{
	FUNC0(hwmgr, SMC_RESP_0, SMC_RESP, 0);

	FUNC1(hwmgr->device, mmSMC_MSG_ARG_0, parameter);

	return FUNC2(hwmgr, msg);
}