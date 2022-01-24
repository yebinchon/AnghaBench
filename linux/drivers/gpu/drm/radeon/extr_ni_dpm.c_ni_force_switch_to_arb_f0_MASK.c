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
struct rv7xx_power_info {int /*<<< orphan*/  sram_end; } ;
struct radeon_device {int dummy; } ;
struct ni_power_info {int /*<<< orphan*/  arb_table_start; } ;

/* Variables and functions */
 int MC_CG_ARB_FREQ_F0 ; 
 int FUNC0 (struct radeon_device*,int,int) ; 
 struct ni_power_info* FUNC1 (struct radeon_device*) ; 
 struct rv7xx_power_info* FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC2(rdev);
	struct ni_power_info *ni_pi = FUNC1(rdev);
	u32 tmp;
	int ret;

	ret = FUNC3(rdev, ni_pi->arb_table_start,
					&tmp, pi->sram_end);
	if (ret)
		return ret;

	tmp = (tmp >> 24) & 0xff;

	if (tmp == MC_CG_ARB_FREQ_F0)
		return 0;

	return FUNC0(rdev, tmp, MC_CG_ARB_FREQ_F0);
}