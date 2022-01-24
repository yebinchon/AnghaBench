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
struct radeon_device {int cg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_GATING_DIS ; 
 int /*<<< orphan*/  HDP_HOST_PATH_CNTL ; 
 int RADEON_CG_SUPPORT_HDP_MGCG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
				bool enable)
{
	u32 orig, data;

	orig = data = FUNC0(HDP_HOST_PATH_CNTL);

	if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_HDP_MGCG))
		data &= ~CLOCK_GATING_DIS;
	else
		data |= CLOCK_GATING_DIS;

	if (orig != data)
		FUNC1(HDP_HOST_PATH_CNTL, data);
}