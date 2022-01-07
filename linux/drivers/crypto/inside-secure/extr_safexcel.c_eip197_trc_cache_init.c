
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct safexcel_crypto_priv {int dev; scalar_t__ base; } ;


 int EIP197_CS_BANKSEL_MASK ;
 int EIP197_CS_BANKSEL_OFS ;
 scalar_t__ EIP197_CS_RAM_CTRL ;
 int EIP197_CS_TRC_REC_WC ;
 scalar_t__ EIP197_TRC_ECCCTRL ;
 int EIP197_TRC_ENABLE_0 ;
 int EIP197_TRC_ENABLE_MASK ;
 scalar_t__ EIP197_TRC_FREECHAIN ;
 int EIP197_TRC_FREECHAIN_HEAD_PTR (int ) ;
 int EIP197_TRC_FREECHAIN_TAIL_PTR (int) ;
 scalar_t__ EIP197_TRC_PARAMS ;
 scalar_t__ EIP197_TRC_PARAMS2 ;
 int EIP197_TRC_PARAMS2_HTABLE_PTR (int) ;
 int EIP197_TRC_PARAMS2_RC_SZ_SMALL (int) ;
 int EIP197_TRC_PARAMS_BLK_TIMER_SPEED (int) ;
 int EIP197_TRC_PARAMS_DATA_ACCESS ;
 int EIP197_TRC_PARAMS_HTABLE_SZ (int) ;
 int EIP197_TRC_PARAMS_RC_SZ_LARGE (int) ;
 int EIP197_TRC_PARAMS_SW_RESET ;
 int __fls (int) ;
 int dev_info (int ,char*,int,int,int,int) ;
 int eip197_trc_cache_clear (struct safexcel_crypto_priv*,int,int) ;
 int eip197_trc_cache_probe (struct safexcel_crypto_priv*,int,int) ;
 int eip197_trc_cache_setupvirt (struct safexcel_crypto_priv*) ;
 int min_t (int ,int,int) ;
 int readl (scalar_t__) ;
 int uint ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void eip197_trc_cache_init(struct safexcel_crypto_priv *priv)
{
 u32 val, dsize, asize;
 int cs_rc_max, cs_ht_wc, cs_trc_rec_wc, cs_trc_lg_rec_wc;
 int cs_rc_abs_max, cs_ht_sz;
 int maxbanks;


 eip197_trc_cache_setupvirt(priv);





 val = readl(priv->base + EIP197_CS_RAM_CTRL);
 val &= ~EIP197_TRC_ENABLE_MASK;
 val |= EIP197_TRC_ENABLE_0 | EIP197_CS_BANKSEL_MASK;
 writel(val, priv->base + EIP197_CS_RAM_CTRL);
 val = readl(priv->base + EIP197_CS_RAM_CTRL);
 maxbanks = ((val&EIP197_CS_BANKSEL_MASK)>>EIP197_CS_BANKSEL_OFS) + 1;


 writel(0, priv->base + EIP197_TRC_ECCCTRL);





 val = readl(priv->base + EIP197_TRC_PARAMS);
 val |= EIP197_TRC_PARAMS_SW_RESET | EIP197_TRC_PARAMS_DATA_ACCESS;
 writel(val, priv->base + EIP197_TRC_PARAMS);


 dsize = eip197_trc_cache_probe(priv, maxbanks, 0xffffffff);






 val = readl(priv->base + EIP197_TRC_PARAMS);

 val &= ~(EIP197_TRC_PARAMS_DATA_ACCESS | EIP197_CS_BANKSEL_MASK);
 writel(val, priv->base + EIP197_TRC_PARAMS);


 asize = eip197_trc_cache_probe(priv, 0, 0xbfffffff) >> 4;


 writel(0, priv->base + EIP197_TRC_ECCCTRL);
 cs_trc_rec_wc = EIP197_CS_TRC_REC_WC;
 cs_trc_lg_rec_wc = EIP197_CS_TRC_REC_WC;





 cs_rc_abs_max = min_t(uint, ((dsize >> 2) / cs_trc_lg_rec_wc), 1023);

 cs_rc_max = min_t(uint, cs_rc_abs_max, (asize >> 1));

 cs_ht_sz = __fls(asize - cs_rc_max) - 2;

 cs_ht_wc = 16<<cs_ht_sz;

 cs_rc_max = min_t(uint, cs_rc_abs_max, asize - (cs_ht_wc >> 4));


 eip197_trc_cache_clear(priv, cs_rc_max, cs_ht_wc);


 val = readl(priv->base + EIP197_CS_RAM_CTRL);
 val &= ~EIP197_TRC_ENABLE_MASK;
 writel(val, priv->base + EIP197_CS_RAM_CTRL);


 val = EIP197_TRC_FREECHAIN_HEAD_PTR(0) |
       EIP197_TRC_FREECHAIN_TAIL_PTR(cs_rc_max - 1);
 writel(val, priv->base + EIP197_TRC_FREECHAIN);


 val = EIP197_TRC_PARAMS2_RC_SZ_SMALL(cs_trc_rec_wc) |
       EIP197_TRC_PARAMS2_HTABLE_PTR(cs_rc_max);
 writel(val, priv->base + EIP197_TRC_PARAMS2);


 val = EIP197_TRC_PARAMS_RC_SZ_LARGE(cs_trc_lg_rec_wc) |
       EIP197_TRC_PARAMS_BLK_TIMER_SPEED(1) |
       EIP197_TRC_PARAMS_HTABLE_SZ(cs_ht_sz);
 writel(val, priv->base + EIP197_TRC_PARAMS);

 dev_info(priv->dev, "TRC init: %dd,%da (%dr,%dh)\n",
   dsize, asize, cs_rc_max, cs_ht_wc + cs_ht_wc);
}
