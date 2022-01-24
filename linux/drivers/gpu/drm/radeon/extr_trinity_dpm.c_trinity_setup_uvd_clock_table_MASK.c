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
struct trinity_ps {int vclk_low_divider; int vclk_high_divider; int dclk_low_divider; int dclk_high_divider; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMU_UVD_DPM_STATES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct trinity_ps* FUNC1 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
					  struct radeon_ps *rps)
{
	struct trinity_ps *ps = FUNC1(rps);
	u32 uvdstates = (ps->vclk_low_divider |
			 ps->vclk_high_divider << 8 |
			 ps->dclk_low_divider << 16 |
			 ps->dclk_high_divider << 24);

	FUNC0(SMU_UVD_DPM_STATES, uvdstates);
}