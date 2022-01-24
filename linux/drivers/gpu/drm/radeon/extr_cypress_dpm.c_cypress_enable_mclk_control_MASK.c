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
 int /*<<< orphan*/  MCLK_PWRMGT_CNTL ; 
 int /*<<< orphan*/  MPLL_PWRMGT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct radeon_device *rdev,
				 bool enable)
{
	if (enable)
		FUNC0(MCLK_PWRMGT_CNTL, 0, ~MPLL_PWRMGT_OFF);
	else
		FUNC0(MCLK_PWRMGT_CNTL, MPLL_PWRMGT_OFF, ~MPLL_PWRMGT_OFF);
}