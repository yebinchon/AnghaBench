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
typedef  size_t u32 ;
struct socfpga_fpga_priv {int dummy; } ;
struct fpga_manager {struct socfpga_fpga_priv* priv; } ;
typedef  enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int FPGA_MGR_STATE_UNKNOWN ; 
 size_t FUNC1 (struct socfpga_fpga_priv*) ; 
 int* socfpga_state_to_framework_state ; 

__attribute__((used)) static enum fpga_mgr_states FUNC2(struct fpga_manager *mgr)
{
	struct socfpga_fpga_priv *priv = mgr->priv;
	enum fpga_mgr_states ret;
	u32 state;

	state = FUNC1(priv);

	if (state < FUNC0(socfpga_state_to_framework_state))
		ret = socfpga_state_to_framework_state[state];
	else
		ret = FPGA_MGR_STATE_UNKNOWN;

	return ret;
}