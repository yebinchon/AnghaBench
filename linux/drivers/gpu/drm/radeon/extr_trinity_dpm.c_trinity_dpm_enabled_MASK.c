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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SMU_SCLK_DPM_CNTL ; 

__attribute__((used)) static bool FUNC2(struct radeon_device *rdev)
{
	if (FUNC0(SMU_SCLK_DPM_CNTL) & FUNC1(1))
		return true;
	else
		return false;
}