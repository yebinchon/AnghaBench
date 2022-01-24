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
struct analogix_dp_device {scalar_t__ reg_base; } ;
typedef  enum clock_recovery_m_value_type { ____Placeholder_clock_recovery_m_value_type } clock_recovery_m_value_type ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_M_VID_0 ; 
 scalar_t__ ANALOGIX_DP_M_VID_1 ; 
 scalar_t__ ANALOGIX_DP_M_VID_2 ; 
 scalar_t__ ANALOGIX_DP_N_VID_0 ; 
 scalar_t__ ANALOGIX_DP_N_VID_1 ; 
 scalar_t__ ANALOGIX_DP_N_VID_2 ; 
 scalar_t__ ANALOGIX_DP_SYS_CTL_4 ; 
 int FIX_M_VID ; 
 int REGISTER_M ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(struct analogix_dp_device *dp,
				 enum clock_recovery_m_value_type type,
				 u32 m_value, u32 n_value)
{
	u32 reg;

	if (type == REGISTER_M) {
		reg = FUNC0(dp->reg_base + ANALOGIX_DP_SYS_CTL_4);
		reg |= FIX_M_VID;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_SYS_CTL_4);
		reg = m_value & 0xff;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_M_VID_0);
		reg = (m_value >> 8) & 0xff;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_M_VID_1);
		reg = (m_value >> 16) & 0xff;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_M_VID_2);

		reg = n_value & 0xff;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_N_VID_0);
		reg = (n_value >> 8) & 0xff;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_N_VID_1);
		reg = (n_value >> 16) & 0xff;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_N_VID_2);
	} else  {
		reg = FUNC0(dp->reg_base + ANALOGIX_DP_SYS_CTL_4);
		reg &= ~FIX_M_VID;
		FUNC1(reg, dp->reg_base + ANALOGIX_DP_SYS_CTL_4);

		FUNC1(0x00, dp->reg_base + ANALOGIX_DP_N_VID_0);
		FUNC1(0x80, dp->reg_base + ANALOGIX_DP_N_VID_1);
		FUNC1(0x00, dp->reg_base + ANALOGIX_DP_N_VID_2);
	}
}