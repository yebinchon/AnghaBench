
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rings; } ;
struct safexcel_crypto_priv {TYPE_1__ config; } ;


 scalar_t__ EIP197_HIA_CDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_RDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_HI ;
 scalar_t__ EIP197_HIA_xDR_RING_BASE_ADDR_LO ;
 scalar_t__ EIP197_HIA_xDR_STAT ;
 int GENMASK (int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void safexcel_hw_reset_rings(struct safexcel_crypto_priv *priv)
{
 int i;

 for (i = 0; i < priv->config.rings; i++) {

  writel(GENMASK(5, 0), EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_STAT);
  writel(GENMASK(7, 0), EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_STAT);


  writel(0, EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_LO);
  writel(0, EIP197_HIA_CDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_HI);


  writel(0, EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_LO);
  writel(0, EIP197_HIA_RDR(priv, i) + EIP197_HIA_xDR_RING_BASE_ADDR_HI);
 }
}
