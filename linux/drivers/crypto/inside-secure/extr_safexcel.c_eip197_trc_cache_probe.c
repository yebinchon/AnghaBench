
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct safexcel_crypto_priv {scalar_t__ base; } ;


 scalar_t__ EIP197_CLASSIFICATION_RAMS ;
 int eip197_trc_cache_banksel (struct safexcel_crypto_priv*,int,int*) ;
 int min (int,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u32 eip197_trc_cache_probe(struct safexcel_crypto_priv *priv,
      int maxbanks, u32 probemask)
{
 u32 val, addrhi, addrlo, addrmid;
 int actbank;





 addrhi = 1 << (16 + maxbanks);
 addrlo = 0;
 actbank = min(maxbanks - 1, 0);
 while ((addrhi - addrlo) > 32) {

  addrmid = (addrhi + addrlo) >> 1;
  eip197_trc_cache_banksel(priv, addrmid, &actbank);
  writel((addrmid | (addrlo << 16)) & probemask,
   priv->base + EIP197_CLASSIFICATION_RAMS +
   (addrmid & 0xffff));


  eip197_trc_cache_banksel(priv, addrlo, &actbank);
  writel((addrlo | (addrhi << 16)) & probemask,
   priv->base + EIP197_CLASSIFICATION_RAMS +
   (addrlo & 0xffff));


  eip197_trc_cache_banksel(priv, addrmid, &actbank);
  val = readl(priv->base + EIP197_CLASSIFICATION_RAMS +
       (addrmid & 0xffff));

  if (val == ((addrmid | (addrlo << 16)) & probemask)) {

   addrlo = addrmid;
  } else {

   addrhi = addrmid;
  }
 }
 return addrhi;
}
