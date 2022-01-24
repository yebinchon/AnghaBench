#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  vid_mapping_table; } ;
struct trinity_power_info {TYPE_1__ sys_info; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LVRT_MASK ; 
 int FUNC1 (int) ; 
 int SMU_SCLK_DPM_STATE_0_CNTL_0 ; 
 int TRINITY_SIZEOF_DPM_STATE_TABLE ; 
 int FUNC2 (int) ; 
 int VID_MASK ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ *,int) ; 
 struct trinity_power_info* FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev, u32 index, u32 vid)
{
	struct trinity_power_info *pi = FUNC5(rdev);
	u32 vid_7bit = FUNC4(rdev, &pi->sys_info.vid_mapping_table, vid);
	u32 value;
	u32 ix = index * TRINITY_SIZEOF_DPM_STATE_TABLE;

	value = FUNC1(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix);
	value &= ~VID_MASK;
	value |= FUNC2(vid_7bit);
	FUNC3(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix, value);

	value = FUNC1(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix);
	value &= ~LVRT_MASK;
	value |= FUNC0(0);
	FUNC3(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix, value);
}