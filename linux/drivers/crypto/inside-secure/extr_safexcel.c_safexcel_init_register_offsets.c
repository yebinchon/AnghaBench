
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_register_offsets {int global; int pe; int hia_gen_cfg; int hia_dse_thr; int hia_dse; int hia_dfe_thr; int hia_dfe; int hia_aic_xdr; int hia_aic_r; int hia_aic_g; int hia_aic; } ;
struct safexcel_crypto_priv {int flags; struct safexcel_register_offsets offsets; } ;


 int EIP197_GLOBAL_BASE ;
 int EIP197_HIA_AIC_BASE ;
 int EIP197_HIA_AIC_G_BASE ;
 int EIP197_HIA_AIC_R_BASE ;
 int EIP197_HIA_AIC_xDR_BASE ;
 int EIP197_HIA_DFE_BASE ;
 int EIP197_HIA_DFE_THR_BASE ;
 int EIP197_HIA_DSE_BASE ;
 int EIP197_HIA_DSE_THR_BASE ;
 int EIP197_HIA_GEN_CFG_BASE ;
 int EIP197_PE_BASE ;
 int EIP97_GLOBAL_BASE ;
 int EIP97_HIA_AIC_BASE ;
 int EIP97_HIA_AIC_G_BASE ;
 int EIP97_HIA_AIC_R_BASE ;
 int EIP97_HIA_AIC_xDR_BASE ;
 int EIP97_HIA_DFE_BASE ;
 int EIP97_HIA_DFE_THR_BASE ;
 int EIP97_HIA_DSE_BASE ;
 int EIP97_HIA_DSE_THR_BASE ;
 int EIP97_HIA_GEN_CFG_BASE ;
 int EIP97_PE_BASE ;
 int SAFEXCEL_HW_EIP197 ;

__attribute__((used)) static void safexcel_init_register_offsets(struct safexcel_crypto_priv *priv)
{
 struct safexcel_register_offsets *offsets = &priv->offsets;

 if (priv->flags & SAFEXCEL_HW_EIP197) {
  offsets->hia_aic = EIP197_HIA_AIC_BASE;
  offsets->hia_aic_g = EIP197_HIA_AIC_G_BASE;
  offsets->hia_aic_r = EIP197_HIA_AIC_R_BASE;
  offsets->hia_aic_xdr = EIP197_HIA_AIC_xDR_BASE;
  offsets->hia_dfe = EIP197_HIA_DFE_BASE;
  offsets->hia_dfe_thr = EIP197_HIA_DFE_THR_BASE;
  offsets->hia_dse = EIP197_HIA_DSE_BASE;
  offsets->hia_dse_thr = EIP197_HIA_DSE_THR_BASE;
  offsets->hia_gen_cfg = EIP197_HIA_GEN_CFG_BASE;
  offsets->pe = EIP197_PE_BASE;
  offsets->global = EIP197_GLOBAL_BASE;
 } else {
  offsets->hia_aic = EIP97_HIA_AIC_BASE;
  offsets->hia_aic_g = EIP97_HIA_AIC_G_BASE;
  offsets->hia_aic_r = EIP97_HIA_AIC_R_BASE;
  offsets->hia_aic_xdr = EIP97_HIA_AIC_xDR_BASE;
  offsets->hia_dfe = EIP97_HIA_DFE_BASE;
  offsets->hia_dfe_thr = EIP97_HIA_DFE_THR_BASE;
  offsets->hia_dse = EIP97_HIA_DSE_BASE;
  offsets->hia_dse_thr = EIP97_HIA_DSE_THR_BASE;
  offsets->hia_gen_cfg = EIP97_HIA_GEN_CFG_BASE;
  offsets->pe = EIP97_PE_BASE;
  offsets->global = EIP97_GLOBAL_BASE;
 }
}
