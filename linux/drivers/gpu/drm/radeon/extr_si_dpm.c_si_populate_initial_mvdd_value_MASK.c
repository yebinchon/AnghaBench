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
struct si_power_info {int /*<<< orphan*/  mvdd_bootup_value; int /*<<< orphan*/  mvdd_voltage_table; } ;
struct rv7xx_power_info {scalar_t__ mvdd_control; } ;
struct radeon_device {int dummy; } ;
struct SISLANDS_SMC_VOLTAGE_VALUE {int dummy; } ;

/* Variables and functions */
 struct rv7xx_power_info* FUNC0 (struct radeon_device*) ; 
 struct si_power_info* FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct SISLANDS_SMC_VOLTAGE_VALUE*) ; 

__attribute__((used)) static int FUNC3(struct radeon_device *rdev,
					  struct SISLANDS_SMC_VOLTAGE_VALUE *voltage)
{
	struct rv7xx_power_info *pi = FUNC0(rdev);
	struct si_power_info *si_pi = FUNC1(rdev);

	if (pi->mvdd_control)
		return FUNC2(rdev, &si_pi->mvdd_voltage_table,
						 si_pi->mvdd_bootup_value, voltage);

	return 0;
}