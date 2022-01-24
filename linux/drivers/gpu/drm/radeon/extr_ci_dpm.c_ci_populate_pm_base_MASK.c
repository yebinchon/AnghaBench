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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  smc_powertune_table; scalar_t__ caps_power_containment; } ;
typedef  int /*<<< orphan*/  SMU7_Discrete_PmFuses ;

/* Variables and functions */
 int /*<<< orphan*/  PmFuseTable ; 
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ; 
 int /*<<< orphan*/  SMU7_Firmware_Header ; 
 int FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct ci_power_info* FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC1(rdev);
	u32 pm_fuse_table_offset;
	int ret;

	if (pi->caps_power_containment) {
		ret = FUNC10(rdev,
					     SMU7_FIRMWARE_HEADER_LOCATION +
					     FUNC11(SMU7_Firmware_Header, PmFuseTable),
					     &pm_fuse_table_offset, pi->sram_end);
		if (ret)
			return ret;
		ret = FUNC4(rdev);
		if (ret)
			return ret;
		ret = FUNC9(rdev);
		if (ret)
			return ret;
		ret = FUNC7(rdev);
		if (ret)
			return ret;
		ret = FUNC8(rdev);
		if (ret)
			return ret;
		ret = FUNC5(rdev);
		if (ret)
			return ret;
		ret = FUNC6(rdev);
		if (ret)
			return ret;
		ret = FUNC2(rdev);
		if (ret)
			return ret;
		ret = FUNC3(rdev);
		if (ret)
			return ret;
		ret = FUNC0(rdev, pm_fuse_table_offset,
					   (u8 *)&pi->smc_powertune_table,
					   sizeof(SMU7_Discrete_PmFuses), pi->sram_end);
		if (ret)
			return ret;
	}

	return 0;
}