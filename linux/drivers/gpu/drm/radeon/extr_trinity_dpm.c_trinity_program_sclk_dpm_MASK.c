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
 int /*<<< orphan*/  PM_I_CNTL_1 ; 
 int /*<<< orphan*/  PM_TP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int SCLK_DPM_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int*,int*) ; 
 int FUNC4 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev)
{
	u32 p, u;
	u32 tp = FUNC0(PM_TP);
	u32 ni;
	u32 xclk = FUNC4(rdev);
	u32 value;

	FUNC3(400, xclk, 16, &p, &u);

	ni = (p + tp - 1) / tp;

	value = FUNC0(PM_I_CNTL_1);
	value &= ~SCLK_DPM_MASK;
	value |= FUNC1(ni);
	FUNC2(PM_I_CNTL_1, value);
}