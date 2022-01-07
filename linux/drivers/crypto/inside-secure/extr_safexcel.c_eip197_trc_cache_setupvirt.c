
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rings; } ;
struct safexcel_crypto_priv {scalar_t__ base; TYPE_1__ config; } ;


 scalar_t__ EIP197_FLUE_ARC4_OFFSET ;
 scalar_t__ EIP197_FLUE_CACHEBASE_HI (int) ;
 scalar_t__ EIP197_FLUE_CACHEBASE_LO (int) ;
 scalar_t__ EIP197_FLUE_CONFIG (int) ;
 int EIP197_FLUE_CONFIG_MAGIC ;
 scalar_t__ EIP197_FLUE_IFC_LUT (int) ;
 scalar_t__ EIP197_FLUE_OFFSETS ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void eip197_trc_cache_setupvirt(struct safexcel_crypto_priv *priv)
{
 int i;
 for (i = 0; i < 4; i++)
  writel(0, priv->base + EIP197_FLUE_IFC_LUT(i));





 for (i = 0; i < priv->config.rings; i++) {
  writel(0, priv->base + EIP197_FLUE_CACHEBASE_LO(i));
  writel(0, priv->base + EIP197_FLUE_CACHEBASE_HI(i));
  writel(EIP197_FLUE_CONFIG_MAGIC,
         priv->base + EIP197_FLUE_CONFIG(i));
 }
 writel(0, priv->base + EIP197_FLUE_OFFSETS);
 writel(0, priv->base + EIP197_FLUE_ARC4_OFFSET);
}
