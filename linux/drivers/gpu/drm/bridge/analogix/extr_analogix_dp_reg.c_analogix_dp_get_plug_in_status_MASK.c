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
struct analogix_dp_device {scalar_t__ reg_base; scalar_t__ hpd_gpiod; } ;

/* Variables and functions */
 scalar_t__ ANALOGIX_DP_SYS_CTL_3 ; 
 int EINVAL ; 
 int HPD_STATUS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

int FUNC2(struct analogix_dp_device *dp)
{
	u32 reg;

	if (dp->hpd_gpiod) {
		if (FUNC0(dp->hpd_gpiod))
			return 0;
	} else {
		reg = FUNC1(dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
		if (reg & HPD_STATUS)
			return 0;
	}

	return -EINVAL;
}