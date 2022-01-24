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
 int /*<<< orphan*/  PM_TP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMU_UVD_DPM_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int*,int*) ; 
 int FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
					   u32 interval)
{
	u32 p, u;
	u32 tp = FUNC0(PM_TP);
	u32 val;
	u32 xclk = FUNC3(rdev);

	FUNC2(interval, xclk, 16, &p, &u);

	val = (p + tp - 1) / tp;

	FUNC1(SMU_UVD_DPM_CNTL, val);
}