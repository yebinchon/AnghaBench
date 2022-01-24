#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rv7xx_ps {int /*<<< orphan*/  low; } ;
struct rv7xx_power_info {int /*<<< orphan*/  sram_end; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  valid_flag; int /*<<< orphan*/  last; int /*<<< orphan*/ * mc_reg_table_entry; } ;
struct evergreen_power_info {int /*<<< orphan*/  mc_reg_table_start; TYPE_1__ mc_reg_table; } ;
struct TYPE_6__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ SMC_Evergreen_MCRegisters ;

/* Variables and functions */
 int /*<<< orphan*/  RV770_SMC_SOFT_REGISTER_seq_index ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,TYPE_2__*) ; 
 struct evergreen_power_info* FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rv7xx_power_info* FUNC6 (struct radeon_device*) ; 
 struct rv7xx_ps* FUNC7 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct radeon_device *rdev,
				  struct radeon_ps *radeon_boot_state)
{
	struct rv7xx_power_info *pi = FUNC6(rdev);
	struct evergreen_power_info *eg_pi = FUNC4(rdev);
	struct rv7xx_ps *boot_state = FUNC7(radeon_boot_state);
	SMC_Evergreen_MCRegisters mc_reg_table = { 0 };

	FUNC8(rdev,
				      RV770_SMC_SOFT_REGISTER_seq_index, 1);

	FUNC3(rdev, &mc_reg_table);

	FUNC0(rdev,
						  &boot_state->low,
						  &mc_reg_table.data[0]);

	FUNC2(&eg_pi->mc_reg_table.mc_reg_table_entry[0],
				     &mc_reg_table.data[1], eg_pi->mc_reg_table.last,
				     eg_pi->mc_reg_table.valid_flag);

	FUNC1(rdev, radeon_boot_state, &mc_reg_table);

	return FUNC5(rdev, eg_pi->mc_reg_table_start,
				       (u8 *)&mc_reg_table, sizeof(SMC_Evergreen_MCRegisters),
				       pi->sram_end);
}