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
struct a10_fpga_priv {int dummy; } ;

/* Variables and functions */
 int A10_FPGAMGR_IMGCFG_STAT_F2S_PR_ERROR ; 
 int A10_FPGAMGR_IMGCFG_STAT_F2S_PR_READY ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct a10_fpga_priv*) ; 

__attribute__((used)) static int FUNC1(struct a10_fpga_priv *priv)
{
	u32 reg, i;

	for (i = 0; i < 10 ; i++) {
		reg = FUNC0(priv);

		if (reg & A10_FPGAMGR_IMGCFG_STAT_F2S_PR_ERROR)
			return -EINVAL;

		if (reg & A10_FPGAMGR_IMGCFG_STAT_F2S_PR_READY)
			return 0;
	}

	return -ETIMEDOUT;
}