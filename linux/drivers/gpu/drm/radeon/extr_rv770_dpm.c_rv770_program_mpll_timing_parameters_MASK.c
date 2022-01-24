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
struct rv7xx_power_info {int ref_div; int /*<<< orphan*/  mem_gddr5; } ;
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV770 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPLL_TIME ; 
 int R600_MPLLLOCKTIME_DFLT ; 
 int /*<<< orphan*/  R600_MPLLRESETTIME_DFLT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct rv7xx_power_info* FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC3(rdev);

	if ((rdev->family == CHIP_RV770) && !pi->mem_gddr5) {
		FUNC2(MPLL_TIME,
		       (FUNC0(R600_MPLLLOCKTIME_DFLT * pi->ref_div) |
			FUNC1(R600_MPLLRESETTIME_DFLT)));
	}
}