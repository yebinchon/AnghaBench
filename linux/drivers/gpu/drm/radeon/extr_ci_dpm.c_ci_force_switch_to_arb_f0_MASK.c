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
 int MC_CG_ARB_FREQ_F0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_SCRATCH9 ; 
 int FUNC1 (struct radeon_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = (FUNC0(SMC_SCRATCH9) & 0x0000ff00) >> 8;

	if (tmp == MC_CG_ARB_FREQ_F0)
		return 0;

	return FUNC1(rdev, tmp, MC_CG_ARB_FREQ_F0);
}