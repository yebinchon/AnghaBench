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
struct radeon_device {int dummy; } ;
struct ci_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  smc_mc_reg_table; int /*<<< orphan*/  mc_reg_table_start; } ;
typedef  int /*<<< orphan*/  SMU7_Discrete_MCRegisters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct ci_power_info* FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC2(rdev);
	int ret;

	FUNC4(&pi->smc_mc_reg_table, 0, sizeof(SMU7_Discrete_MCRegisters));

	ret = FUNC3(rdev, &pi->smc_mc_reg_table);
	if (ret)
		return ret;
	FUNC0(rdev, &pi->smc_mc_reg_table);

	return FUNC1(rdev,
				    pi->mc_reg_table_start,
				    (u8 *)&pi->smc_mc_reg_table,
				    sizeof(SMU7_Discrete_MCRegisters),
				    pi->sram_end);
}