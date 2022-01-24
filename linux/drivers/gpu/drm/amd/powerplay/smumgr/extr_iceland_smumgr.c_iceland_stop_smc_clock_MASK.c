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
 int /*<<< orphan*/  SMC_SYSCON_CLOCK_CNTL_0 ; 
 int /*<<< orphan*/  ck_disable ; 

__attribute__((used)) static void FUNC1(struct pp_hwmgr *hwmgr)
{
	FUNC0(hwmgr->device, CGS_IND_REG__SMC,
				  SMC_SYSCON_CLOCK_CNTL_0,
				  ck_disable, 1);
}