
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pes; int rings; int cd_offset; int rd_offset; } ;
struct safexcel_crypto_priv {int flags; TYPE_1__ config; int dev; } ;


 int EIP197_DEFAULT_RING_SIZE ;
 int EIP197_DxE_THR_CTRL_EN ;
 int EIP197_DxE_THR_CTRL_RESET_PE ;
 int EIP197_FUNCTION_ALL ;
 scalar_t__ EIP197_HIA_AIC (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_AIC_G (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_AIC_G_ACK ;
 scalar_t__ EIP197_HIA_AIC_G_ENABLE_CTRL ;
 scalar_t__ EIP197_HIA_AIC_R (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_AIC_R_ENABLE_CLR (int) ;
 scalar_t__ EIP197_HIA_CDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_DFE (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_DFE_CFG (int) ;
 int EIP197_HIA_DFE_CFG_DIS_DEBUG ;
 scalar_t__ EIP197_HIA_DFE_THR (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_DFE_THR_CTRL (int) ;
 scalar_t__ EIP197_HIA_DSE (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_DSE_CFG (int) ;
 int EIP197_HIA_DSE_CFG_ALWAYS_BUFFERABLE ;
 int EIP197_HIA_DSE_CFG_DIS_DEBUG ;
 int EIP197_HIA_DSE_CFG_EN_SINGLE_WR ;
 scalar_t__ EIP197_HIA_DSE_THR (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_DSE_THR_CTRL (int) ;
 scalar_t__ EIP197_HIA_DSE_THR_STAT (int) ;
 int EIP197_HIA_DxE_CFG_CTRL_CACHE_CTRL (int ) ;
 int EIP197_HIA_DxE_CFG_DATA_CACHE_CTRL (int ) ;
 int EIP197_HIA_DxE_CFG_MAX_CTRL_SIZE (int) ;
 int EIP197_HIA_DxE_CFG_MAX_DATA_SIZE (int) ;
 int EIP197_HIA_DxE_CFG_MIN_CTRL_SIZE (int) ;
 int EIP197_HIA_DxE_CFG_MIN_DATA_SIZE (int) ;
 scalar_t__ EIP197_HIA_GEN_CFG (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_MST_CTRL ;
 scalar_t__ EIP197_HIA_RA_PE_CTRL (int) ;
 int EIP197_HIA_RA_PE_CTRL_EN ;
 int EIP197_HIA_RA_PE_CTRL_RESET ;
 scalar_t__ EIP197_HIA_RDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_xDR_CFG ;
 scalar_t__ EIP197_HIA_xDR_PREP_COUNT ;
 scalar_t__ EIP197_HIA_xDR_PREP_PNTR ;
 scalar_t__ EIP197_HIA_xDR_PROC_COUNT ;
 scalar_t__ EIP197_HIA_xDR_PROC_PNTR ;
 scalar_t__ EIP197_HIA_xDR_RING_SIZE ;
 scalar_t__ EIP197_MST_CTRL ;
 int EIP197_MST_CTRL_RD_CACHE (int ) ;
 int EIP197_MST_CTRL_TX_MAX_CMD (int) ;
 int EIP197_MST_CTRL_WD_CACHE (int ) ;
 scalar_t__ EIP197_PE (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_PE_EIP96_FUNCTION2_EN (int) ;
 scalar_t__ EIP197_PE_EIP96_FUNCTION_EN (int) ;
 scalar_t__ EIP197_PE_EIP96_TOKEN_CTRL (int) ;
 int EIP197_PE_EIP96_TOKEN_CTRL_CTX_UPDATES ;
 int EIP197_PE_EIP96_TOKEN_CTRL_ENABLE_TIMEOUT ;
 int EIP197_PE_EIP96_TOKEN_CTRL_NO_TOKEN_WAIT ;
 scalar_t__ EIP197_PE_IN_DBUF_THRES (int) ;
 scalar_t__ EIP197_PE_IN_TBUF_THRES (int) ;
 int EIP197_PE_IN_xBUF_THRES_MAX (int) ;
 int EIP197_PE_IN_xBUF_THRES_MIN (int) ;
 scalar_t__ EIP197_PE_OUT_DBUF_THRES (int) ;
 int EIP197_PE_OUT_DBUF_THRES_MAX (int) ;
 int EIP197_PE_OUT_DBUF_THRES_MIN (int) ;
 int EIP197_TRC_CACHE ;
 int EIP197_xDR_PREP_CLR_COUNT ;
 int EIP197_xDR_PROC_CLR_COUNT ;
 int GENMASK (int,int) ;
 int RD_CACHE_3BITS ;
 int RD_CACHE_4BITS ;
 int SAFEXCEL_HW_EIP197 ;
 int WR_CACHE_3BITS ;
 int WR_CACHE_4BITS ;
 int dev_dbg (int ,char*,int,int) ;
 int eip197_load_firmwares (struct safexcel_crypto_priv*) ;
 int eip197_trc_cache_init (struct safexcel_crypto_priv*) ;
 int readl (scalar_t__) ;
 int safexcel_hw_setup_cdesc_rings (struct safexcel_crypto_priv*) ;
 int safexcel_hw_setup_rdesc_rings (struct safexcel_crypto_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int safexcel_hw_init(struct safexcel_crypto_priv *priv)
{
 u32 val;
 int i, ret, pe;

 dev_dbg(priv->dev, "HW init: using %d pipe(s) and %d ring(s)\n",
  priv->config.pes, priv->config.rings);





 if (priv->flags & SAFEXCEL_HW_EIP197) {
  val = readl(EIP197_HIA_AIC(priv) + EIP197_HIA_MST_CTRL);
  val |= EIP197_MST_CTRL_TX_MAX_CMD(5);
  writel(val, EIP197_HIA_AIC(priv) + EIP197_HIA_MST_CTRL);
 }


 writel(EIP197_MST_CTRL_RD_CACHE(RD_CACHE_4BITS) |
        EIP197_MST_CTRL_WD_CACHE(WR_CACHE_4BITS),
        EIP197_HIA_GEN_CFG(priv) + EIP197_MST_CTRL);




 writel(0, EIP197_HIA_AIC_G(priv) + EIP197_HIA_AIC_G_ENABLE_CTRL);


 writel(GENMASK(31, 0), EIP197_HIA_AIC_G(priv) + EIP197_HIA_AIC_G_ACK);


 for (pe = 0; pe < priv->config.pes; pe++) {



  writel(EIP197_DxE_THR_CTRL_RESET_PE,
         EIP197_HIA_DFE_THR(priv) + EIP197_HIA_DFE_THR_CTRL(pe));

  if (priv->flags & SAFEXCEL_HW_EIP197)

   writel(EIP197_HIA_RA_PE_CTRL_RESET,
          EIP197_HIA_AIC(priv) + EIP197_HIA_RA_PE_CTRL(pe));


  val = EIP197_HIA_DFE_CFG_DIS_DEBUG;
  val |= EIP197_HIA_DxE_CFG_MIN_DATA_SIZE(6) |
         EIP197_HIA_DxE_CFG_MAX_DATA_SIZE(9);
  val |= EIP197_HIA_DxE_CFG_MIN_CTRL_SIZE(6) |
         EIP197_HIA_DxE_CFG_MAX_CTRL_SIZE(7);
  val |= EIP197_HIA_DxE_CFG_DATA_CACHE_CTRL(RD_CACHE_3BITS);
  val |= EIP197_HIA_DxE_CFG_CTRL_CACHE_CTRL(RD_CACHE_3BITS);
  writel(val, EIP197_HIA_DFE(priv) + EIP197_HIA_DFE_CFG(pe));


  writel(0, EIP197_HIA_DFE_THR(priv) + EIP197_HIA_DFE_THR_CTRL(pe));


  writel(EIP197_PE_IN_xBUF_THRES_MIN(6) |
         EIP197_PE_IN_xBUF_THRES_MAX(9),
         EIP197_PE(priv) + EIP197_PE_IN_DBUF_THRES(pe));
  writel(EIP197_PE_IN_xBUF_THRES_MIN(6) |
         EIP197_PE_IN_xBUF_THRES_MAX(7),
         EIP197_PE(priv) + EIP197_PE_IN_TBUF_THRES(pe));

  if (priv->flags & SAFEXCEL_HW_EIP197)

   writel(EIP197_HIA_RA_PE_CTRL_EN |
          GENMASK(priv->config.rings - 1, 0),
          EIP197_HIA_AIC(priv) + EIP197_HIA_RA_PE_CTRL(pe));




  writel(EIP197_DxE_THR_CTRL_RESET_PE,
         EIP197_HIA_DSE_THR(priv) + EIP197_HIA_DSE_THR_CTRL(pe));


  while ((readl(EIP197_HIA_DSE_THR(priv) + EIP197_HIA_DSE_THR_STAT(pe)) &
   GENMASK(15, 12)) != GENMASK(15, 12))
   ;


  val = EIP197_HIA_DSE_CFG_DIS_DEBUG;
  val |= EIP197_HIA_DxE_CFG_MIN_DATA_SIZE(7) |
         EIP197_HIA_DxE_CFG_MAX_DATA_SIZE(8);
  val |= EIP197_HIA_DxE_CFG_DATA_CACHE_CTRL(WR_CACHE_3BITS);
  val |= EIP197_HIA_DSE_CFG_ALWAYS_BUFFERABLE;



  if (priv->flags & SAFEXCEL_HW_EIP197)
   val |= EIP197_HIA_DSE_CFG_EN_SINGLE_WR;
  writel(val, EIP197_HIA_DSE(priv) + EIP197_HIA_DSE_CFG(pe));


  writel(0, EIP197_HIA_DSE_THR(priv) + EIP197_HIA_DSE_THR_CTRL(pe));


  writel(EIP197_PE_OUT_DBUF_THRES_MIN(7) |
         EIP197_PE_OUT_DBUF_THRES_MAX(8),
         EIP197_PE(priv) + EIP197_PE_OUT_DBUF_THRES(pe));




  val = EIP197_PE_EIP96_TOKEN_CTRL_CTX_UPDATES |
        EIP197_PE_EIP96_TOKEN_CTRL_NO_TOKEN_WAIT |
        EIP197_PE_EIP96_TOKEN_CTRL_ENABLE_TIMEOUT;
  writel(val, EIP197_PE(priv) + EIP197_PE_EIP96_TOKEN_CTRL(pe));


  writel(EIP197_FUNCTION_ALL,
         EIP197_PE(priv) + EIP197_PE_EIP96_FUNCTION_EN(pe));
  writel(EIP197_FUNCTION_ALL,
         EIP197_PE(priv) + EIP197_PE_EIP96_FUNCTION2_EN(pe));
 }


 for (i = 0; i < priv->config.rings; i++) {

  writel(GENMASK(31, 0),
         EIP197_HIA_AIC_R(priv) + EIP197_HIA_AIC_R_ENABLE_CLR(i));


  writel(0, EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_CFG);


  writel(EIP197_xDR_PREP_CLR_COUNT,
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_PREP_COUNT);


  writel(EIP197_xDR_PROC_CLR_COUNT,
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_PROC_COUNT);

  writel(0,
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_PREP_PNTR);
  writel(0,
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_PROC_PNTR);

  writel((EIP197_DEFAULT_RING_SIZE * priv->config.cd_offset) << 2,
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_RING_SIZE);
 }


 for (i = 0; i < priv->config.rings; i++) {

  writel(0, EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_CFG);


  writel(EIP197_xDR_PREP_CLR_COUNT,
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_PREP_COUNT);


  writel(EIP197_xDR_PROC_CLR_COUNT,
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_PROC_COUNT);

  writel(0,
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_PREP_PNTR);
  writel(0,
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_PROC_PNTR);


  writel((EIP197_DEFAULT_RING_SIZE * priv->config.rd_offset) << 2,
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_RING_SIZE);
 }

 for (pe = 0; pe < priv->config.pes; pe++) {

  writel(EIP197_DxE_THR_CTRL_EN | GENMASK(priv->config.rings - 1, 0),
         EIP197_HIA_DFE_THR(priv) + EIP197_HIA_DFE_THR_CTRL(pe));


  writel(EIP197_DxE_THR_CTRL_EN | GENMASK(priv->config.rings - 1, 0),
         EIP197_HIA_DSE_THR(priv) + EIP197_HIA_DSE_THR_CTRL(pe));
 }


 writel(GENMASK(30, 20), EIP197_HIA_AIC_G(priv) + EIP197_HIA_AIC_G_ACK);

 if (priv->flags & SAFEXCEL_HW_EIP197) {
  eip197_trc_cache_init(priv);
  priv->flags |= EIP197_TRC_CACHE;

  ret = eip197_load_firmwares(priv);
  if (ret)
   return ret;
 }

 safexcel_hw_setup_cdesc_rings(priv);
 safexcel_hw_setup_rdesc_rings(priv);

 return 0;
}
