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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rv7xx_power_info {int mvdd_control; scalar_t__ mvdd_split_frequency; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {int mvdd_high_index; int mvdd_low_index; } ;
struct atom_memory_info {int dummy; } ;

/* Variables and functions */
 int BACKBIAS_PAD_EN ; 
 int BACKBIAS_VALUE ; 
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct atom_memory_info*) ; 
 struct evergreen_power_info* FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,struct atom_memory_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 struct rv7xx_power_info* FUNC5 (struct radeon_device*) ; 

int FUNC6(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC5(rdev);
	struct evergreen_power_info *eg_pi = FUNC2(rdev);
	u8 module_index;
	struct atom_memory_info memory_info;
	u32 tmp = FUNC0(GENERAL_PWRMGT);

	if (!(tmp & BACKBIAS_PAD_EN)) {
		eg_pi->mvdd_high_index = 0;
		eg_pi->mvdd_low_index = 1;
		pi->mvdd_control = false;
		return 0;
	}

	if (tmp & BACKBIAS_VALUE)
		eg_pi->mvdd_high_index = 1;
	else
		eg_pi->mvdd_high_index = 0;

	eg_pi->mvdd_low_index =
		(eg_pi->mvdd_high_index == 0) ? 1 : 0;

	module_index = FUNC4(rdev);

	if (FUNC3(rdev, module_index, &memory_info)) {
		pi->mvdd_control = false;
		return 0;
	}

	pi->mvdd_split_frequency =
		FUNC1(&memory_info);

	if (pi->mvdd_split_frequency == 0) {
		pi->mvdd_control = false;
		return 0;
	}

	return 0;
}