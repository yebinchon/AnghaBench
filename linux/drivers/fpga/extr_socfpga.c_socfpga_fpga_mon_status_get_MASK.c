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
struct socfpga_fpga_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST ; 
 int SOCFPGA_FPGMGR_MON_STATUS_MASK ; 
 int FUNC0 (struct socfpga_fpga_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(struct socfpga_fpga_priv *priv)
{
	return FUNC0(priv, SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST) &
		SOCFPGA_FPGMGR_MON_STATUS_MASK;
}