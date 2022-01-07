
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct safexcel_crypto_priv {int base; } ;


 int EIP197_CLASSIFICATION_RAMS ;
 int EIP197_CS_RC_NEXT (int) ;
 int EIP197_CS_RC_PREV (int) ;
 int EIP197_CS_RC_SIZE ;
 int EIP197_RC_NULL ;
 int GENMASK (int,int ) ;
 int writel (int,int) ;

__attribute__((used)) static void eip197_trc_cache_clear(struct safexcel_crypto_priv *priv,
       int cs_rc_max, int cs_ht_wc)
{
 int i;
 u32 htable_offset, val, offset;


 for (i = 0; i < cs_rc_max; i++) {
  offset = EIP197_CLASSIFICATION_RAMS + i * EIP197_CS_RC_SIZE;

  writel(EIP197_CS_RC_NEXT(EIP197_RC_NULL) |
         EIP197_CS_RC_PREV(EIP197_RC_NULL),
         priv->base + offset);

  val = EIP197_CS_RC_NEXT(i + 1) | EIP197_CS_RC_PREV(i - 1);
  if (i == 0)
   val |= EIP197_CS_RC_PREV(EIP197_RC_NULL);
  else if (i == cs_rc_max - 1)
   val |= EIP197_CS_RC_NEXT(EIP197_RC_NULL);
  writel(val, priv->base + offset + 4);

  writel(0, priv->base + offset + 8);
  writel(0, priv->base + offset + 12);
 }


 htable_offset = cs_rc_max * EIP197_CS_RC_SIZE;
 for (i = 0; i < cs_ht_wc; i++)
  writel(GENMASK(29, 0),
         priv->base + EIP197_CLASSIFICATION_RAMS +
         htable_offset + i * sizeof(u32));
}
