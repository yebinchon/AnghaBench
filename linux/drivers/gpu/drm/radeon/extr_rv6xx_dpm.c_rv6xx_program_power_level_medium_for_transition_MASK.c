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
struct TYPE_2__ {size_t low_mclk_index; int /*<<< orphan*/ * pcie_gen2; int /*<<< orphan*/  medium_sclk_index; int /*<<< orphan*/ * mclks; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_DISPLAY_WATERMARK_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_CTXSW ; 
 size_t R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_MEDIUM ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 struct rv6xx_power_info* FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC6(rdev);

	FUNC7(rdev,
					  R600_POWER_LEVEL_CTXSW,
					  pi->hw.mclks[pi->hw.low_mclk_index]);

	FUNC3(rdev, R600_POWER_LEVEL_MEDIUM, 1);

	FUNC1(rdev, R600_POWER_LEVEL_MEDIUM,
					     R600_POWER_LEVEL_CTXSW);
	FUNC0(rdev, R600_POWER_LEVEL_MEDIUM,
					     pi->hw.medium_sclk_index);

	FUNC4(rdev, R600_POWER_LEVEL_MEDIUM,
					  R600_DISPLAY_WATERMARK_LOW);

	FUNC5(rdev, R600_POWER_LEVEL_MEDIUM, false);

	FUNC2(rdev, R600_POWER_LEVEL_MEDIUM,
				       pi->hw.pcie_gen2[R600_POWER_LEVEL_LOW]);
}