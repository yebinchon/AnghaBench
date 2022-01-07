
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10_fpga_priv {int regmap; } ;


 int A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH ;
 int A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH_SHIFT ;
 int A10_FPGAMGR_IMGCFG_CTL_02_OFST ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static void socfpga_a10_fpga_set_cfg_width(struct a10_fpga_priv *priv,
        int width)
{
 width <<= A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH_SHIFT;

 regmap_update_bits(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_02_OFST,
      A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH, width);
}
