
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fpga_manager {struct altera_cvp_conf* priv; } ;
struct altera_cvp_conf {int dummy; } ;
typedef enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;


 int FPGA_MGR_STATE_OPERATING ;
 int FPGA_MGR_STATE_POWER_UP ;
 int FPGA_MGR_STATE_UNKNOWN ;
 int VSE_CVP_STATUS ;
 int VSE_CVP_STATUS_CFG_DONE ;
 int VSE_CVP_STATUS_CVP_EN ;
 int altera_read_config_dword (struct altera_cvp_conf*,int ,int*) ;

__attribute__((used)) static enum fpga_mgr_states altera_cvp_state(struct fpga_manager *mgr)
{
 struct altera_cvp_conf *conf = mgr->priv;
 u32 status;

 altera_read_config_dword(conf, VSE_CVP_STATUS, &status);

 if (status & VSE_CVP_STATUS_CFG_DONE)
  return FPGA_MGR_STATE_OPERATING;

 if (status & VSE_CVP_STATUS_CVP_EN)
  return FPGA_MGR_STATE_POWER_UP;

 return FPGA_MGR_STATE_UNKNOWN;
}
