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
struct sumo_ps {int num_levels; int flags; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int BOOST_DPM_LEVEL ; 
 int /*<<< orphan*/  CG_SCLK_DPM_CTRL_4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SUMO_POWERSTATE_FLAGS_BOOST_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sumo_ps* FUNC2 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
			    struct radeon_ps *rps)
{
	struct sumo_ps *new_ps = FUNC2(rps);
	u32 dpm_ctrl4 = FUNC0(CG_SCLK_DPM_CTRL_4);

	dpm_ctrl4 &= 0xFFFFFF00;
	dpm_ctrl4 |= (1 << (new_ps->num_levels - 1));

	if (new_ps->flags & SUMO_POWERSTATE_FLAGS_BOOST_STATE)
		dpm_ctrl4 |= (1 << BOOST_DPM_LEVEL);

	FUNC1(CG_SCLK_DPM_CTRL_4, dpm_ctrl4);
}