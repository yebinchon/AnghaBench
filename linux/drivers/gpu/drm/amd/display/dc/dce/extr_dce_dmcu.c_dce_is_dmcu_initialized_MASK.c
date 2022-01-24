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
struct dmcu {int dummy; } ;
struct dce_dmcu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMCU_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct dce_dmcu* FUNC1 (struct dmcu*) ; 
 int /*<<< orphan*/  UC_IN_RESET ; 

__attribute__((used)) static bool FUNC2(struct dmcu *dmcu)
{
	struct dce_dmcu *dmcu_dce = FUNC1(dmcu);
	unsigned int dmcu_uc_reset;

	/* microcontroller is not running */
	FUNC0(DMCU_STATUS, UC_IN_RESET, &dmcu_uc_reset);

	/* DMCU is not running */
	if (dmcu_uc_reset)
		return false;

	return true;
}