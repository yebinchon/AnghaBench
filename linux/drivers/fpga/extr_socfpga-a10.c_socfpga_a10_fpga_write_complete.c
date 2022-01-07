
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fpga_manager {int dev; struct a10_fpga_priv* priv; } ;
struct fpga_image_info {int dummy; } ;
struct a10_fpga_priv {int regmap; } ;


 int A10_FPGAMGR_IMGCFG_CTL_01_OFST ;
 int A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE ;
 int A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG ;
 int A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST ;
 int A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL ;
 int A10_FPGAMGR_IMGCFG_CTL_02_OFST ;
 int A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN ;
 int A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN ;
 int A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE ;
 int ETIMEDOUT ;
 int dev_dbg (int *,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int socfpga_a10_fpga_generate_dclks (struct a10_fpga_priv*,int) ;
 int socfpga_a10_fpga_read_stat (struct a10_fpga_priv*) ;
 int socfpga_a10_fpga_wait_for_pr_done (struct a10_fpga_priv*) ;

__attribute__((used)) static int socfpga_a10_fpga_write_complete(struct fpga_manager *mgr,
        struct fpga_image_info *info)
{
 struct a10_fpga_priv *priv = mgr->priv;
 u32 reg;
 int ret;


 ret = socfpga_a10_fpga_wait_for_pr_done(priv);


 regmap_update_bits(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_01_OFST,
      A10_FPGAMGR_IMGCFG_CTL_01_S2F_PR_REQUEST, 0);


 socfpga_a10_fpga_generate_dclks(priv, 256);


 regmap_update_bits(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_02_OFST,
      A10_FPGAMGR_IMGCFG_CTL_02_EN_CFG_CTRL, 0);


 regmap_update_bits(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_01_OFST,
      A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE,
      A10_FPGAMGR_IMGCFG_CTL_01_S2F_NCE);


 regmap_update_bits(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_01_OFST,
      A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG,
      A10_FPGAMGR_IMGCFG_CTL_01_S2F_NENABLE_CONFIG);


 if (ret)
  return ret;


 reg = socfpga_a10_fpga_read_stat(priv);

 if (((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_USERMODE) == 0) ||
     ((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN) == 0) ||
     ((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN) == 0)) {
  dev_dbg(&mgr->dev,
   "Timeout in final check. Status=%08xf\n", reg);
  return -ETIMEDOUT;
 }

 return 0;
}
