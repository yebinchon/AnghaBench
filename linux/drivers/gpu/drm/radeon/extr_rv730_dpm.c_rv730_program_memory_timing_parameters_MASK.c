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
struct TYPE_6__ {int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; } ;
struct TYPE_5__ {int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; } ;
struct TYPE_4__ {int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; } ;
struct rv7xx_ps {TYPE_3__ low; TYPE_2__ medium; TYPE_1__ high; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2_1 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2_2 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING2_3 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING_1 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING_2 ; 
 int /*<<< orphan*/  MC_ARB_DRAM_TIMING_3 ; 
 int /*<<< orphan*/  MC_ARB_RFSH_RATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int POWERMODE1_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int POWERMODE2_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int POWERMODE3_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct rv7xx_ps* FUNC7 (struct radeon_ps*) ; 

void FUNC8(struct radeon_device *rdev,
					    struct radeon_ps *radeon_state)
{
	struct rv7xx_ps *state = FUNC7(radeon_state);
	u32 arb_refresh_rate = 0;
	u32 dram_timing = 0;
	u32 dram_timing2 = 0;
	u32 old_dram_timing = 0;
	u32 old_dram_timing2 = 0;

	arb_refresh_rate = FUNC3(MC_ARB_RFSH_RATE) &
		~(POWERMODE1_MASK | POWERMODE2_MASK | POWERMODE3_MASK);
	arb_refresh_rate |=
		(FUNC0(FUNC6(rdev, state->low.sclk)) |
		 FUNC1(FUNC6(rdev, state->medium.sclk)) |
		 FUNC2(FUNC6(rdev, state->high.sclk)));
	FUNC4(MC_ARB_RFSH_RATE, arb_refresh_rate);

	/* save the boot dram timings */
	old_dram_timing = FUNC3(MC_ARB_DRAM_TIMING);
	old_dram_timing2 = FUNC3(MC_ARB_DRAM_TIMING2);

	FUNC5(rdev,
					    state->high.sclk,
					    state->high.mclk);

	dram_timing = FUNC3(MC_ARB_DRAM_TIMING);
	dram_timing2 = FUNC3(MC_ARB_DRAM_TIMING2);

	FUNC4(MC_ARB_DRAM_TIMING_3, dram_timing);
	FUNC4(MC_ARB_DRAM_TIMING2_3, dram_timing2);

	FUNC5(rdev,
					    state->medium.sclk,
					    state->medium.mclk);

	dram_timing = FUNC3(MC_ARB_DRAM_TIMING);
	dram_timing2 = FUNC3(MC_ARB_DRAM_TIMING2);

	FUNC4(MC_ARB_DRAM_TIMING_2, dram_timing);
	FUNC4(MC_ARB_DRAM_TIMING2_2, dram_timing2);

	FUNC5(rdev,
					    state->low.sclk,
					    state->low.mclk);

	dram_timing = FUNC3(MC_ARB_DRAM_TIMING);
	dram_timing2 = FUNC3(MC_ARB_DRAM_TIMING2);

	FUNC4(MC_ARB_DRAM_TIMING_1, dram_timing);
	FUNC4(MC_ARB_DRAM_TIMING2_1, dram_timing2);

	/* restore the boot dram timings */
	FUNC4(MC_ARB_DRAM_TIMING, old_dram_timing);
	FUNC4(MC_ARB_DRAM_TIMING2, old_dram_timing2);

}