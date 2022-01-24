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
struct si_power_info {int /*<<< orphan*/  sram_end; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 struct si_power_info* FUNC0 (struct radeon_device*) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev)
{
	struct si_power_info *si_pi = FUNC0(rdev);
	int ret;

	FUNC2(rdev);
	FUNC3(rdev);

	ret = FUNC1(rdev, si_pi->sram_end);

	return ret;
}