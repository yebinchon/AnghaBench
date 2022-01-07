
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_smfc_priv {int lock; scalar_t__ base; } ;
struct ipu_smfc {int chno; struct ipu_smfc_priv* priv; } ;


 scalar_t__ SMFC_MAP ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

int ipu_smfc_map_channel(struct ipu_smfc *smfc, int csi_id, int mipi_id)
{
 struct ipu_smfc_priv *priv = smfc->priv;
 unsigned long flags;
 u32 val, shift;

 spin_lock_irqsave(&priv->lock, flags);

 shift = smfc->chno * 3;
 val = readl(priv->base + SMFC_MAP);
 val &= ~(0x7 << shift);
 val |= ((csi_id << 2) | mipi_id) << shift;
 writel(val, priv->base + SMFC_MAP);

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
