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
typedef  scalar_t__ u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_VIDEO_CTL_10 ; 
 scalar_t__ FORMAT_SEL ; 
 scalar_t__ VIDEO_TIMING_FROM_CAPTURE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

void FUNC2(struct analogix_dp_device *dp, u32 type)
{
	u32 reg;

	if (type == VIDEO_TIMING_FROM_CAPTURE) {
		reg = FUNC0(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_10);
		reg &= ~FORMAT_SEL;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_10);
	} else {
		reg = FUNC0(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_10);
		reg |= FORMAT_SEL;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_10);
	}
}