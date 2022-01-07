
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {struct altera_ps_conf* priv; } ;
struct altera_ps_conf {int status; } ;
typedef enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;


 int FPGA_MGR_STATE_RESET ;
 int FPGA_MGR_STATE_UNKNOWN ;
 scalar_t__ gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static enum fpga_mgr_states altera_ps_state(struct fpga_manager *mgr)
{
 struct altera_ps_conf *conf = mgr->priv;

 if (gpiod_get_value_cansleep(conf->status))
  return FPGA_MGR_STATE_RESET;

 return FPGA_MGR_STATE_UNKNOWN;
}
