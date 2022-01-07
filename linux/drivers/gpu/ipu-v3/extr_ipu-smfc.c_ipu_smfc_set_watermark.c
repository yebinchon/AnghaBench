
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_smfc_priv {int lock; scalar_t__ base; } ;
struct ipu_smfc {int chno; struct ipu_smfc_priv* priv; } ;


 scalar_t__ SMFC_WMC ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

int ipu_smfc_set_watermark(struct ipu_smfc *smfc, u32 set_level, u32 clr_level)
{
 struct ipu_smfc_priv *priv = smfc->priv;
 unsigned long flags;
 u32 val, shift;

 spin_lock_irqsave(&priv->lock, flags);

 shift = smfc->chno * 6 + (smfc->chno > 1 ? 4 : 0);
 val = readl(priv->base + SMFC_WMC);
 val &= ~(0x3f << shift);
 val |= ((clr_level << 3) | set_level) << shift;
 writel(val, priv->base + SMFC_WMC);

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
