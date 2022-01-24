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
struct ci_power_info {int mem_gddr5; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_SEQ_MISC0 ; 
 int MC_SEQ_MISC0_GDDR5_MASK ; 
 int MC_SEQ_MISC0_GDDR5_SHIFT ; 
 int MC_SEQ_MISC0_GDDR5_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ci_power_info* FUNC1 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC1(rdev);
	u32 tmp;

	tmp = FUNC0(MC_SEQ_MISC0);

	if (((tmp & MC_SEQ_MISC0_GDDR5_MASK) >> MC_SEQ_MISC0_GDDR5_SHIFT) ==
	    MC_SEQ_MISC0_GDDR5_VALUE)
		pi->mem_gddr5 = true;
	else
		pi->mem_gddr5 = false;

}