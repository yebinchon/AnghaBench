
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int dummy; } ;


 int SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST ;
 int SOCFPGA_FPGMGR_MON_STATUS_MASK ;
 int socfpga_fpga_readl (struct socfpga_fpga_priv*,int ) ;

__attribute__((used)) static u32 socfpga_fpga_mon_status_get(struct socfpga_fpga_priv *priv)
{
 return socfpga_fpga_readl(priv, SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST) &
  SOCFPGA_FPGMGR_MON_STATUS_MASK;
}
