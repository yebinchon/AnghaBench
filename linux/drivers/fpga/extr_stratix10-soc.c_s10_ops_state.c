
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int dummy; } ;
typedef enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;


 int FPGA_MGR_STATE_UNKNOWN ;

__attribute__((used)) static enum fpga_mgr_states s10_ops_state(struct fpga_manager *mgr)
{
 return FPGA_MGR_STATE_UNKNOWN;
}
