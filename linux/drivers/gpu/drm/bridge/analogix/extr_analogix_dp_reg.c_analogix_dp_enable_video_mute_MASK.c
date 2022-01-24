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
struct analogix_dp_device {scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_VIDEO_CTL_1 ; 
 int /*<<< orphan*/  HDCP_VIDEO_MUTE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct analogix_dp_device *dp, bool enable)
{
	u32 reg;

	if (enable) {
		reg = FUNC0(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
		reg |= HDCP_VIDEO_MUTE;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
	} else {
		reg = FUNC0(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
		reg &= ~HDCP_VIDEO_MUTE;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
	}
}