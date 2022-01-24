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
struct radeon_ps {int dummy; } ;
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ CHIP_RV710 ; 
 scalar_t__ CHIP_RV730 ; 
 scalar_t__ CHIP_RV740 ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
						  struct radeon_ps *radeon_new_state)
{
	if ((rdev->family == CHIP_RV730) ||
	    (rdev->family == CHIP_RV710) ||
	    (rdev->family == CHIP_RV740))
		FUNC0(rdev, radeon_new_state);
	else
		FUNC1(rdev, radeon_new_state);
}