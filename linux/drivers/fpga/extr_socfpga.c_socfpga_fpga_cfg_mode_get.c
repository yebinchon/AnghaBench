
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct socfpga_fpga_priv {int dummy; } ;
struct TYPE_3__ {int valid; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 size_t SOCFPGA_FPGMGR_STAT_MSEL_MASK ;
 size_t SOCFPGA_FPGMGR_STAT_MSEL_SHIFT ;
 int SOCFPGA_FPGMGR_STAT_OFST ;
 TYPE_1__* cfgmgr_modes ;
 size_t socfpga_fpga_readl (struct socfpga_fpga_priv*,int ) ;

__attribute__((used)) static int socfpga_fpga_cfg_mode_get(struct socfpga_fpga_priv *priv)
{
 u32 msel;

 msel = socfpga_fpga_readl(priv, SOCFPGA_FPGMGR_STAT_OFST);
 msel &= SOCFPGA_FPGMGR_STAT_MSEL_MASK;
 msel >>= SOCFPGA_FPGMGR_STAT_MSEL_SHIFT;


 if ((msel >= ARRAY_SIZE(cfgmgr_modes)) || !cfgmgr_modes[msel].valid)
  return -EINVAL;

 return msel;
}
