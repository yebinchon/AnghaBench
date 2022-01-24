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
struct rv7xx_power_info {int /*<<< orphan*/  s0_vid_lower_smio_cntl; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S0_VID_LOWER_SMIO_CNTL ; 
 struct rv7xx_power_info* FUNC1 (struct radeon_device*) ; 

void FUNC2(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC1(rdev);

	pi->s0_vid_lower_smio_cntl =
		FUNC0(S0_VID_LOWER_SMIO_CNTL);
}