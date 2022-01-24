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
struct TYPE_2__ {int /*<<< orphan*/ * pcie_gen2; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_DISPLAY_WATERMARK_LOW ; 
 size_t R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,size_t,int /*<<< orphan*/ ) ; 
 struct rv6xx_power_info* FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC5(rdev);

	FUNC3(rdev, R600_POWER_LEVEL_LOW, 0);
	FUNC1(rdev, R600_POWER_LEVEL_LOW, 0);
	FUNC0(rdev, R600_POWER_LEVEL_LOW, 0);

	FUNC4(rdev, R600_POWER_LEVEL_LOW,
					  R600_DISPLAY_WATERMARK_LOW);

	FUNC2(rdev, R600_POWER_LEVEL_LOW,
				       pi->hw.pcie_gen2[R600_POWER_LEVEL_LOW]);

}