#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int sclk; int /*<<< orphan*/  mclk; } ;
struct TYPE_5__ {int sclk; } ;
struct TYPE_4__ {int sclk; } ;
struct rv7xx_ps {TYPE_3__ high; TYPE_2__ medium; TYPE_1__ low; } ;
struct rv7xx_power_info {int boot_sclk; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_ARB_RFSH_RATE ; 
 int /*<<< orphan*/  MC_ARB_SQM_RATIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC11 (struct radeon_device*) ; 
 struct rv7xx_ps* FUNC12 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC13(struct radeon_device *rdev,
						   struct radeon_ps *radeon_state)
{
	struct rv7xx_ps *state = FUNC12(radeon_state);
	struct rv7xx_power_info *pi = FUNC11(rdev);
	u32 sqm_ratio;
	u32 arb_refresh_rate;
	u32 high_clock;

	if (state->high.sclk < (state->low.sclk * 0xFF / 0x40))
		high_clock = state->high.sclk;
	else
		high_clock = (state->low.sclk * 0xFF / 0x40);

	FUNC9(rdev, high_clock,
					    state->high.mclk);

	sqm_ratio =
		FUNC4(64 * high_clock / pi->boot_sclk) |
		FUNC5(64 * high_clock / state->low.sclk) |
		FUNC6(64 * high_clock / state->medium.sclk) |
		FUNC7(64 * high_clock / state->high.sclk);
	FUNC8(MC_ARB_SQM_RATIO, sqm_ratio);

	arb_refresh_rate =
		FUNC0(FUNC10(rdev, pi->boot_sclk)) |
		FUNC1(FUNC10(rdev, state->low.sclk)) |
		FUNC2(FUNC10(rdev, state->medium.sclk)) |
		FUNC3(FUNC10(rdev, state->high.sclk));
	FUNC8(MC_ARB_RFSH_RATE, arb_refresh_rate);
}