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
typedef  int /*<<< orphan*/  uint8_t ;
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmBIOS_SCRATCH_4 ; 

__attribute__((used)) static uint8_t FUNC1(struct pp_hwmgr *hwmgr)
{
	return (uint8_t) (0xFF & (FUNC0(hwmgr->device, mmBIOS_SCRATCH_4) >> 16));
}