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
struct rv6xx_power_info {int mpll_ref_div; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int R600_MPLLLOCKTIME_DFLT ; 
 int /*<<< orphan*/  R600_MPLLRESETTIME_DFLT ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct rv6xx_power_info* FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC2(rdev);

	FUNC0(rdev, R600_MPLLLOCKTIME_DFLT *
				pi->mpll_ref_div);
	FUNC1(rdev, R600_MPLLRESETTIME_DFLT);
}