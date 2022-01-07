
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct socfpga_fpga_priv {int dummy; } ;
struct fpga_manager {struct socfpga_fpga_priv* priv; } ;
typedef enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;


 size_t ARRAY_SIZE (int*) ;
 int FPGA_MGR_STATE_UNKNOWN ;
 size_t socfpga_fpga_state_get (struct socfpga_fpga_priv*) ;
 int* socfpga_state_to_framework_state ;

__attribute__((used)) static enum fpga_mgr_states socfpga_fpga_ops_state(struct fpga_manager *mgr)
{
 struct socfpga_fpga_priv *priv = mgr->priv;
 enum fpga_mgr_states ret;
 u32 state;

 state = socfpga_fpga_state_get(priv);

 if (state < ARRAY_SIZE(socfpga_state_to_framework_state))
  ret = socfpga_state_to_framework_state[state];
 else
  ret = FPGA_MGR_STATE_UNKNOWN;

 return ret;
}
