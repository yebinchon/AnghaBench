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
struct analogix_dp_device {scalar_t__ reg_base; TYPE_1__* plat_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_type; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_AUDIO_MARGIN ; 
 scalar_t__ ANALOGIX_DP_FUNC_EN_1 ; 
 scalar_t__ ANALOGIX_DP_FUNC_EN_2 ; 
 scalar_t__ ANALOGIX_DP_HDCP_CTL ; 
 scalar_t__ ANALOGIX_DP_HPD_DEGLITCH_H ; 
 scalar_t__ ANALOGIX_DP_HPD_DEGLITCH_L ; 
 scalar_t__ ANALOGIX_DP_LINK_DEBUG_CTL ; 
 scalar_t__ ANALOGIX_DP_M_AUD_GEN_FILTER_TH ; 
 scalar_t__ ANALOGIX_DP_M_VID_GEN_FILTER_TH ; 
 scalar_t__ ANALOGIX_DP_PHY_TEST ; 
 scalar_t__ ANALOGIX_DP_PKT_SEND_CTL ; 
 scalar_t__ ANALOGIX_DP_SOC_GENERAL_CTL ; 
 scalar_t__ ANALOGIX_DP_SYS_CTL_1 ; 
 scalar_t__ ANALOGIX_DP_SYS_CTL_2 ; 
 scalar_t__ ANALOGIX_DP_SYS_CTL_3 ; 
 scalar_t__ ANALOGIX_DP_SYS_CTL_4 ; 
 scalar_t__ ANALOGIX_DP_VIDEO_FIFO_THRD ; 
 int AUD_FIFO_FUNC_EN_N ; 
 int AUD_FUNC_EN_N ; 
 int AUX_FUNC_EN_N ; 
 int HDCP_FUNC_EN_N ; 
 int LS_CLK_DOMAIN_FUNC_EN_N ; 
 int MASTER_VID_FUNC_EN_N ; 
 int RK_VID_CAP_FUNC_EN_N ; 
 int RK_VID_FIFO_FUNC_EN_N ; 
 int SERDES_FIFO_FUNC_EN_N ; 
 int SLAVE_VID_FUNC_EN_N ; 
 int SSC_FUNC_EN_N ; 
 int SW_FUNC_EN_N ; 
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

void FUNC6(struct analogix_dp_device *dp)
{
	u32 reg;

	FUNC2(dp);
	FUNC0(dp, 0);

	if (dp->plat_data && FUNC3(dp->plat_data->dev_type))
		reg = RK_VID_CAP_FUNC_EN_N | RK_VID_FIFO_FUNC_EN_N |
			SW_FUNC_EN_N;
	else
		reg = MASTER_VID_FUNC_EN_N | SLAVE_VID_FUNC_EN_N |
			AUD_FIFO_FUNC_EN_N | AUD_FUNC_EN_N |
			HDCP_FUNC_EN_N | SW_FUNC_EN_N;

	FUNC5(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_1);

	reg = SSC_FUNC_EN_N | AUX_FUNC_EN_N |
		SERDES_FIFO_FUNC_EN_N |
		LS_CLK_DOMAIN_FUNC_EN_N;
	FUNC5(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_2);

	FUNC4(20, 30);

	FUNC1(dp, 0);

	FUNC5(0x0, dp->reg_base + ANALOGIX_DP_SYS_CTL_1);
	FUNC5(0x40, dp->reg_base + ANALOGIX_DP_SYS_CTL_2);
	FUNC5(0x0, dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
	FUNC5(0x0, dp->reg_base + ANALOGIX_DP_SYS_CTL_4);

	FUNC5(0x0, dp->reg_base + ANALOGIX_DP_PKT_SEND_CTL);
	FUNC5(0x0, dp->reg_base + ANALOGIX_DP_HDCP_CTL);

	FUNC5(0x5e, dp->reg_base + ANALOGIX_DP_HPD_DEGLITCH_L);
	FUNC5(0x1a, dp->reg_base + ANALOGIX_DP_HPD_DEGLITCH_H);

	FUNC5(0x10, dp->reg_base + ANALOGIX_DP_LINK_DEBUG_CTL);

	FUNC5(0x0, dp->reg_base + ANALOGIX_DP_PHY_TEST);

	FUNC5(0x0, dp->reg_base + ANALOGIX_DP_VIDEO_FIFO_THRD);
	FUNC5(0x20, dp->reg_base + ANALOGIX_DP_AUDIO_MARGIN);

	FUNC5(0x4, dp->reg_base + ANALOGIX_DP_M_VID_GEN_FILTER_TH);
	FUNC5(0x2, dp->reg_base + ANALOGIX_DP_M_AUD_GEN_FILTER_TH);

	FUNC5(0x00000101, dp->reg_base + ANALOGIX_DP_SOC_GENERAL_CTL);
}