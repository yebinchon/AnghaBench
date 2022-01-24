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
typedef  unsigned long u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_CAC_CTRL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long TID_CNT_MASK ; 
 unsigned long FUNC1 (struct radeon_device*) ; 

__attribute__((used)) static u32 FUNC2(struct radeon_device *rdev)
{
	u32 xclk_period;
	u32 xclk = FUNC1(rdev);
	u32 tmp = FUNC0(CG_CAC_CTRL) & TID_CNT_MASK;

	xclk_period = (1000000000UL / xclk);
	xclk_period /= 10000UL;

	return tmp * xclk_period;
}