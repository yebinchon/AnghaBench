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
struct TYPE_2__ {int /*<<< orphan*/  sclk; } ;
struct sumo_power_info {TYPE_1__ acpi_pl; } ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int /*<<< orphan*/  post_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_VOLTAGE_EN ; 
 int /*<<< orphan*/  CG_ACPI_CNTL ; 
 int /*<<< orphan*/  CG_ACPI_VOLTAGE_CNTL ; 
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCLK_ACPI_DIV_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct atom_clock_dividers*) ; 
 struct sumo_power_info* FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC3(rdev);
	struct atom_clock_dividers dividers;
	int ret;

	ret = FUNC2(rdev, COMPUTE_ENGINE_PLL_PARAM,
					     pi->acpi_pl.sclk,
					     false, &dividers);
	if (ret)
		return;

	FUNC1(CG_ACPI_CNTL, FUNC0(dividers.post_div), ~SCLK_ACPI_DIV_MASK);
	FUNC1(CG_ACPI_VOLTAGE_CNTL, 0, ~ACPI_VOLTAGE_EN);
}