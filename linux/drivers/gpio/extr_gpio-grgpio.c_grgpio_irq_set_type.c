
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int hwirq; } ;
struct TYPE_2__ {int (* read_reg ) (scalar_t__) ;int bgpio_lock; int (* write_reg ) (scalar_t__,int) ;} ;
struct grgpio_priv {TYPE_1__ gc; scalar_t__ regs; } ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ GRGPIO_IEDGE ;
 scalar_t__ GRGPIO_IPOL ;




 struct grgpio_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__,int) ;
 int stub4 (scalar_t__,int) ;

__attribute__((used)) static int grgpio_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct grgpio_priv *priv = irq_data_get_irq_chip_data(d);
 unsigned long flags;
 u32 mask = BIT(d->hwirq);
 u32 ipol;
 u32 iedge;
 u32 pol;
 u32 edge;

 switch (type) {
 case 128:
  pol = 0;
  edge = 0;
  break;
 case 129:
  pol = mask;
  edge = 0;
  break;
 case 131:
  pol = 0;
  edge = mask;
  break;
 case 130:
  pol = mask;
  edge = mask;
  break;
 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&priv->gc.bgpio_lock, flags);

 ipol = priv->gc.read_reg(priv->regs + GRGPIO_IPOL) & ~mask;
 iedge = priv->gc.read_reg(priv->regs + GRGPIO_IEDGE) & ~mask;

 priv->gc.write_reg(priv->regs + GRGPIO_IPOL, ipol | pol);
 priv->gc.write_reg(priv->regs + GRGPIO_IEDGE, iedge | edge);

 spin_unlock_irqrestore(&priv->gc.bgpio_lock, flags);

 return 0;
}
