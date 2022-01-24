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
 scalar_t__ SCLK_FREQ_SETTING_STEP_0_PART1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  STEP_0_SPLL_REF_DIV_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct radeon_device *rdev,
						   u32 index, u32 divider)
{
	FUNC1(SCLK_FREQ_SETTING_STEP_0_PART1 + (index * 4 * 2),
		 FUNC0(divider), ~STEP_0_SPLL_REF_DIV_MASK);
}