
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct safexcel_crypto_priv {scalar_t__ base; } ;


 int EIP197_CS_BANKSEL_MASK ;
 int EIP197_CS_BANKSEL_OFS ;
 scalar_t__ EIP197_CS_RAM_CTRL ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void eip197_trc_cache_banksel(struct safexcel_crypto_priv *priv,
         u32 addrmid, int *actbank)
{
 u32 val;
 int curbank;

 curbank = addrmid >> 16;
 if (curbank != *actbank) {
  val = readl(priv->base + EIP197_CS_RAM_CTRL);
  val = (val & ~EIP197_CS_BANKSEL_MASK) |
        (curbank << EIP197_CS_BANKSEL_OFS);
  writel(val, priv->base + EIP197_CS_RAM_CTRL);
  *actbank = curbank;
 }
}
