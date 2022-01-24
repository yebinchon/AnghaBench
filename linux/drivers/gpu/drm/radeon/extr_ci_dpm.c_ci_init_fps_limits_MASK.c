#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {void* FpsLowT; void* FpsHighT; } ;
struct ci_power_info {scalar_t__ caps_fps; TYPE_1__ smc_state_table; } ;
typedef  TYPE_1__ SMU7_Discrete_DpmTable ;

/* Variables and functions */
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC0(rdev);
	SMU7_Discrete_DpmTable *table = &pi->smc_state_table;

	if (pi->caps_fps) {
		u16 tmp;

		tmp = 45;
		table->FpsHighT = FUNC1(tmp);

		tmp = 30;
		table->FpsLowT = FUNC1(tmp);
	}
}