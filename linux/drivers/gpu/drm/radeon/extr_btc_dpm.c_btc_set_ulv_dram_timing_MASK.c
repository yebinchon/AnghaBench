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
typedef  int /*<<< orphan*/  u32 ;
struct rv7xx_pl {int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {struct rv7xx_pl* pl; } ;
struct evergreen_power_info {TYPE_1__ ulv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_ARB_BURST_TIME ; 
 int /*<<< orphan*/  MC_ARB_RFSH_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWERMODE0_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE0_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct evergreen_power_info* FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev)
{
	u32 val;
	struct evergreen_power_info *eg_pi = FUNC4(rdev);
	struct rv7xx_pl *ulv_pl = eg_pi->ulv.pl;

	FUNC5(rdev,
					    ulv_pl->sclk,
					    ulv_pl->mclk);

	val = FUNC6(rdev, ulv_pl->sclk);
	FUNC2(MC_ARB_RFSH_RATE, FUNC0(val), ~POWERMODE0_MASK);

	val = FUNC3(rdev, ulv_pl->sclk, ulv_pl->mclk);
	FUNC2(MC_ARB_BURST_TIME, FUNC1(val), ~STATE0_MASK);

	return 0;
}