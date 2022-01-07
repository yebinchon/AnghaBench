
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int pes; int rings; int rd_offset; int rd_size; } ;
struct TYPE_7__ {int hwdataw; int hwrfsize; } ;
struct safexcel_crypto_priv {int flags; TYPE_4__ config; TYPE_3__ hwconfig; TYPE_2__* ring; } ;
struct TYPE_5__ {int base_dma; } ;
struct TYPE_6__ {TYPE_1__ rdr; } ;


 int BIT (int) ;
 int EIP197_FETCH_DEPTH ;
 scalar_t__ EIP197_HIA_AIC_R (struct safexcel_crypto_priv*) ;
 scalar_t__ EIP197_HIA_AIC_R_ENABLE_CTRL (int) ;
 scalar_t__ EIP197_HIA_RDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_xDR_CFG ;
 int EIP197_HIA_xDR_CFG_RD_CACHE (int ) ;
 int EIP197_HIA_xDR_CFG_WR_CACHE (int ) ;
 scalar_t__ EIP197_HIA_xDR_DESC_SIZE ;
 scalar_t__ EIP197_HIA_xDR_DMA_CFG ;
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_HI ;
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_LO ;
 scalar_t__ EIP197_HIA_xDR_STAT ;
 int EIP197_HIA_xDR_WR_CTRL_BUF ;
 int EIP197_HIA_xDR_WR_RES_BUF ;
 int EIP197_RD64_FETCH_SIZE ;
 int EIP197_RDR_IRQ (int) ;
 int EIP197_xDR_DESC_MODE_64BIT ;
 int GENMASK (int,int ) ;
 int RD_CACHE_3BITS ;
 int SAFEXCEL_HW_EIP197 ;
 int WR_CACHE_3BITS ;
 int lower_32_bits (int ) ;
 int min_t (int ,int,int) ;
 int readl (scalar_t__) ;
 int uint ;
 int upper_32_bits (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int safexcel_hw_setup_rdesc_rings(struct safexcel_crypto_priv *priv)
{
 u32 rd_size_rnd, val;
 int i, rd_fetch_cnt;


 rd_size_rnd = (EIP197_RD64_FETCH_SIZE +
         (BIT(priv->hwconfig.hwdataw) - 1)) >>
        priv->hwconfig.hwdataw;
 if (priv->flags & SAFEXCEL_HW_EIP197) {

  rd_fetch_cnt = (1 << priv->hwconfig.hwrfsize) / rd_size_rnd;
  rd_fetch_cnt = min_t(uint, rd_fetch_cnt,
         (priv->config.pes * EIP197_FETCH_DEPTH));
 } else {

  rd_fetch_cnt = ((1 << priv->hwconfig.hwrfsize) /
    rd_size_rnd) - 1;
 }

 for (i = 0; i < priv->config.rings; i++) {

  writel(lower_32_bits(priv->ring[i].rdr.base_dma),
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_LO);
  writel(upper_32_bits(priv->ring[i].rdr.base_dma),
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_HI);

  writel(EIP197_xDR_DESC_MODE_64BIT | (priv->config.rd_offset << 16) |
         priv->config.rd_size,
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_DESC_SIZE);

  writel(((rd_fetch_cnt *
    (rd_size_rnd << priv->hwconfig.hwdataw)) << 16) |
         (rd_fetch_cnt * priv->config.rd_offset),
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_CFG);


  val = EIP197_HIA_xDR_CFG_WR_CACHE(WR_CACHE_3BITS);
  val |= EIP197_HIA_xDR_CFG_RD_CACHE(RD_CACHE_3BITS);
  val |= EIP197_HIA_xDR_WR_RES_BUF | EIP197_HIA_xDR_WR_CTRL_BUF;
  writel(val,
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_DMA_CFG);


  writel(GENMASK(7, 0),
         EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_STAT);


  val = readl(EIP197_HIA_AIC_R(priv) + EIP197_HIA_AIC_R_ENABLE_CTRL(i));
  val |= EIP197_RDR_IRQ(i);
  writel(val, EIP197_HIA_AIC_R(priv) + EIP197_HIA_AIC_R_ENABLE_CTRL(i));
 }

 return 0;
}
