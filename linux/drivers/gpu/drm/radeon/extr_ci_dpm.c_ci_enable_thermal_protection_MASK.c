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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THERMAL_PROTECTION_DIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
					 bool enable)
{
	u32 tmp = FUNC0(GENERAL_PWRMGT);

	if (enable)
		tmp &= ~THERMAL_PROTECTION_DIS;
	else
		tmp |= THERMAL_PROTECTION_DIS;
	FUNC1(GENERAL_PWRMGT, tmp);
}