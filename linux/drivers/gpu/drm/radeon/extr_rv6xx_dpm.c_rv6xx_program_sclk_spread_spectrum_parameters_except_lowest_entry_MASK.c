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
struct TYPE_2__ {int /*<<< orphan*/ * sclks; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 size_t R600_POWER_LEVEL_HIGH ; 
 size_t R600_POWER_LEVEL_MEDIUM ; 
 struct rv6xx_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	struct rv6xx_power_info *pi = FUNC0(rdev);

	FUNC1(rdev,
					     pi->hw.sclks[R600_POWER_LEVEL_HIGH],
					     R600_POWER_LEVEL_HIGH);

	FUNC1(rdev,
					     pi->hw.sclks[R600_POWER_LEVEL_MEDIUM],
					     R600_POWER_LEVEL_MEDIUM);

}