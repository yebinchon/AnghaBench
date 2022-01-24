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
 int /*<<< orphan*/  RCU_ALTVDDNB_NOTIFY ; 
 int /*<<< orphan*/  SUMO_SMU_SERVICE_ROUTINE_ALTVDDNB_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC3(struct radeon_device *rdev,
				      bool powersaving, bool force_nbps1)
{
	u32 param = 0;

	if (!FUNC1(rdev))
		return;

	if (powersaving)
		param |= 1;

	if (force_nbps1)
		param |= 2;

	FUNC0(RCU_ALTVDDNB_NOTIFY, param);

	FUNC2(rdev, SUMO_SMU_SERVICE_ROUTINE_ALTVDDNB_NOTIFY);
}