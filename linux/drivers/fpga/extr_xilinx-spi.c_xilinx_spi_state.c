
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_spi_conf {int done; } ;
struct fpga_manager {struct xilinx_spi_conf* priv; } ;
typedef enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;


 int FPGA_MGR_STATE_RESET ;
 int FPGA_MGR_STATE_UNKNOWN ;
 int gpiod_get_value (int ) ;

__attribute__((used)) static enum fpga_mgr_states xilinx_spi_state(struct fpga_manager *mgr)
{
 struct xilinx_spi_conf *conf = mgr->priv;

 if (!gpiod_get_value(conf->done))
  return FPGA_MGR_STATE_RESET;

 return FPGA_MGR_STATE_UNKNOWN;
}
