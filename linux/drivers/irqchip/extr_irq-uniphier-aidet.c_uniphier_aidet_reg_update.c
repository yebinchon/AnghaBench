
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_aidet_priv {int lock; scalar_t__ reg_base; } ;


 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void uniphier_aidet_reg_update(struct uniphier_aidet_priv *priv,
          unsigned int reg, u32 mask, u32 val)
{
 unsigned long flags;
 u32 tmp;

 spin_lock_irqsave(&priv->lock, flags);
 tmp = readl_relaxed(priv->reg_base + reg);
 tmp &= ~mask;
 tmp |= mask & val;
 writel_relaxed(tmp, priv->reg_base + reg);
 spin_unlock_irqrestore(&priv->lock, flags);
}
