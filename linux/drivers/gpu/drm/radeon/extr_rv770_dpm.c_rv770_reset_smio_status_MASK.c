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
struct rv7xx_power_info {int s0_vid_lower_smio_cntl; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENERAL_PWRMGT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S0_VID_LOWER_SMIO_CNTL ; 
 int /*<<< orphan*/  S1_VID_LOWER_SMIO_CNTL ; 
 int /*<<< orphan*/  S2_VID_LOWER_SMIO_CNTL ; 
 int /*<<< orphan*/  S3_VID_LOWER_SMIO_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SW_SMIO_INDEX_MASK ; 
 int SW_SMIO_INDEX_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rv7xx_power_info* FUNC4 (struct radeon_device*) ; 

void FUNC5(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC4(rdev);
	u32 sw_smio_index, vid_smio_cntl;

	sw_smio_index =
		(FUNC0(GENERAL_PWRMGT) & SW_SMIO_INDEX_MASK) >> SW_SMIO_INDEX_SHIFT;
	switch (sw_smio_index) {
	case 3:
		vid_smio_cntl = FUNC0(S3_VID_LOWER_SMIO_CNTL);
		break;
	case 2:
		vid_smio_cntl = FUNC0(S2_VID_LOWER_SMIO_CNTL);
		break;
	case 1:
		vid_smio_cntl = FUNC0(S1_VID_LOWER_SMIO_CNTL);
		break;
	case 0:
		return;
	default:
		vid_smio_cntl = pi->s0_vid_lower_smio_cntl;
		break;
	}

	FUNC2(S0_VID_LOWER_SMIO_CNTL, vid_smio_cntl);
	FUNC3(GENERAL_PWRMGT, FUNC1(0), ~SW_SMIO_INDEX_MASK);
}