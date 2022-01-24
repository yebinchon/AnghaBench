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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LEVEL0_MPLL_FB_DIV_MASK ; 
 scalar_t__ MPLL_FREQ_LEVEL_0 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
							  u32 index, u32 divider)
{
	FUNC1(MPLL_FREQ_LEVEL_0 + (index * 4), FUNC0(divider),
		 ~LEVEL0_MPLL_FB_DIV_MASK);
}