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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CG_SCLK_DPM_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SCLK_FSTATE_0_DIV_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SCLK_FSTATE_1_DIV_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SCLK_FSTATE_2_DIV_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SCLK_FSTATE_3_DIV_MASK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
				   u32 index, u32 divider)
{
	u32 reg_index = index / 4;
	u32 field_index = index % 4;

	if (field_index == 0)
		FUNC4(CG_SCLK_DPM_CTRL + (reg_index * 4),
			 FUNC0(divider), ~SCLK_FSTATE_0_DIV_MASK);
	else if (field_index == 1)
		FUNC4(CG_SCLK_DPM_CTRL + (reg_index * 4),
			 FUNC1(divider), ~SCLK_FSTATE_1_DIV_MASK);
	else if (field_index == 2)
		FUNC4(CG_SCLK_DPM_CTRL + (reg_index * 4),
			 FUNC2(divider), ~SCLK_FSTATE_2_DIV_MASK);
	else if (field_index == 3)
		FUNC4(CG_SCLK_DPM_CTRL + (reg_index * 4),
			 FUNC3(divider), ~SCLK_FSTATE_3_DIV_MASK);
}