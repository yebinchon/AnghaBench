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
typedef  int /*<<< orphan*/  uint16_t ;
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_RESP ; 
 int /*<<< orphan*/  SMC_RESP_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMC_MESSAGE_0 ; 
 int /*<<< orphan*/  mmSMC_RESP_0 ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr, uint16_t msg)
{
	int ret;

	FUNC2(hwmgr->device, mmSMC_RESP_0, 0);
	FUNC2(hwmgr->device, mmSMC_MESSAGE_0, msg);

	FUNC1(hwmgr, SMC_RESP_0, SMC_RESP, 0);

	ret = FUNC0(hwmgr->device, SMC_RESP_0, SMC_RESP);

	if (ret != 1)
		FUNC3("\n failed to send message %x ret is %d\n",  msg, ret);

	return 0;
}