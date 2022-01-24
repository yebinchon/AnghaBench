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
typedef  int u32 ;
struct TYPE_2__ {int* sclks; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_RFSH_RATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t R600_POWER_LEVEL_HIGH ; 
 size_t R600_POWER_LEVEL_LOW ; 
 size_t R600_POWER_LEVEL_MEDIUM ; 
 int /*<<< orphan*/  SQM_RATIO ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 struct rv6xx_power_info* FUNC11 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC12(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC11(rdev);
	u32 sqm_ratio;
	u32 arb_refresh_rate;
	u32 high_clock;

	if (pi->hw.sclks[R600_POWER_LEVEL_HIGH] <
	    (pi->hw.sclks[R600_POWER_LEVEL_LOW] * 0xFF / 0x40))
		high_clock = pi->hw.sclks[R600_POWER_LEVEL_HIGH];
	else
		high_clock =
			pi->hw.sclks[R600_POWER_LEVEL_LOW] * 0xFF / 0x40;

	FUNC10(rdev, high_clock, 0);

	sqm_ratio = (FUNC4(64 * high_clock / pi->hw.sclks[R600_POWER_LEVEL_LOW]) |
		     FUNC5(64 * high_clock / pi->hw.sclks[R600_POWER_LEVEL_MEDIUM]) |
		     FUNC6(64 * high_clock / pi->hw.sclks[R600_POWER_LEVEL_HIGH]) |
		     FUNC7(64 * high_clock / pi->hw.sclks[R600_POWER_LEVEL_HIGH]));
	FUNC8(SQM_RATIO, sqm_ratio);

	arb_refresh_rate =
		(FUNC0(FUNC9(rdev,
							  pi->hw.sclks[R600_POWER_LEVEL_LOW])) |
		 FUNC1(FUNC9(rdev,
							  pi->hw.sclks[R600_POWER_LEVEL_MEDIUM])) |
		 FUNC2(FUNC9(rdev,
							  pi->hw.sclks[R600_POWER_LEVEL_HIGH])) |
		 FUNC3(FUNC9(rdev,
							  pi->hw.sclks[R600_POWER_LEVEL_HIGH])));
	FUNC8(ARB_RFSH_RATE, arb_refresh_rate);
}