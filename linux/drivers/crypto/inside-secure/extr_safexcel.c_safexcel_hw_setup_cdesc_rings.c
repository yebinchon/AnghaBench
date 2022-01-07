
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int cd_size; int pes; int rings; int cd_offset; } ;
struct TYPE_7__ {int hwdataw; int hwcfsize; } ;
struct safexcel_crypto_priv {int flags; TYPE_4__ config; TYPE_3__ hwconfig; TYPE_2__* ring; } ;
struct TYPE_5__ {int base_dma; } ;
struct TYPE_6__ {TYPE_1__ cdr; } ;


 int BIT (int) ;
 int EIP197_FETCH_DEPTH ;
 scalar_t__ EIP197_HIA_CDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_xDR_CFG ;
 int EIP197_HIA_xDR_CFG_RD_CACHE (int ) ;
 int EIP197_HIA_xDR_CFG_WR_CACHE (int ) ;
 scalar_t__ EIP197_HIA_xDR_DESC_SIZE ;
 scalar_t__ EIP197_HIA_xDR_DMA_CFG ;
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_HI ;
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_LO ;
 scalar_t__ EIP197_HIA_xDR_STAT ;
 int EIP197_xDR_DESC_MODE_64BIT ;
 int GENMASK (int,int ) ;
 int RD_CACHE_3BITS ;
 int SAFEXCEL_HW_EIP197 ;
 int WR_CACHE_3BITS ;
 int lower_32_bits (int ) ;
 int min_t (int ,int,int) ;
 int uint ;
 int upper_32_bits (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int safexcel_hw_setup_cdesc_rings(struct safexcel_crypto_priv *priv)
{
 u32 cd_size_rnd, val;
 int i, cd_fetch_cnt;

 cd_size_rnd = (priv->config.cd_size +
   (BIT(priv->hwconfig.hwdataw) - 1)) >>
         priv->hwconfig.hwdataw;

 if (priv->flags & SAFEXCEL_HW_EIP197) {

  cd_fetch_cnt = (1 << priv->hwconfig.hwcfsize) / cd_size_rnd;
  cd_fetch_cnt = min_t(uint, cd_fetch_cnt,
         (priv->config.pes * EIP197_FETCH_DEPTH));
 } else {

  cd_fetch_cnt = ((1 << priv->hwconfig.hwcfsize) /
    cd_size_rnd) - 1;
 }

 for (i = 0; i < priv->config.rings; i++) {

  writel(lower_32_bits(priv->ring[i].cdr.base_dma),
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_LO);
  writel(upper_32_bits(priv->ring[i].cdr.base_dma),
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_HI);

  writel(EIP197_xDR_DESC_MODE_64BIT | (priv->config.cd_offset << 16) |
         priv->config.cd_size,
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_DESC_SIZE);
  writel(((cd_fetch_cnt *
    (cd_size_rnd << priv->hwconfig.hwdataw)) << 16) |
         (cd_fetch_cnt * priv->config.cd_offset),
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_CFG);


  val = EIP197_HIA_xDR_CFG_WR_CACHE(WR_CACHE_3BITS);
  val |= EIP197_HIA_xDR_CFG_RD_CACHE(RD_CACHE_3BITS);
  writel(val, EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_DMA_CFG);


  writel(GENMASK(5, 0),
         EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_STAT);
 }

 return 0;
}
