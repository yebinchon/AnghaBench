
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct brcmstb_gpio_priv {scalar_t__ reg_base; } ;
struct TYPE_2__ {int (* read_reg ) (scalar_t__) ;int bgpio_lock; int (* write_reg ) (scalar_t__,int) ;} ;
struct brcmstb_gpio_bank {TYPE_1__ gc; int id; struct brcmstb_gpio_priv* parent_priv; } ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ GIO_EC (int ) ;
 scalar_t__ GIO_EI (int ) ;
 scalar_t__ GIO_LEVEL (int ) ;





 int brcmstb_gpio_hwirq_to_offset (int ,struct brcmstb_gpio_bank*) ;
 struct brcmstb_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__,int) ;
 int stub5 (scalar_t__,int) ;
 int stub6 (scalar_t__,int) ;

__attribute__((used)) static int brcmstb_gpio_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct brcmstb_gpio_bank *bank = gpiochip_get_data(gc);
 struct brcmstb_gpio_priv *priv = bank->parent_priv;
 u32 mask = BIT(brcmstb_gpio_hwirq_to_offset(d->hwirq, bank));
 u32 edge_insensitive, iedge_insensitive;
 u32 edge_config, iedge_config;
 u32 level, ilevel;
 unsigned long flags;

 switch (type) {
 case 128:
  level = mask;
  edge_config = 0;
  edge_insensitive = 0;
  break;
 case 129:
  level = mask;
  edge_config = mask;
  edge_insensitive = 0;
  break;
 case 131:
  level = 0;
  edge_config = 0;
  edge_insensitive = 0;
  break;
 case 130:
  level = 0;
  edge_config = mask;
  edge_insensitive = 0;
  break;
 case 132:
  level = 0;
  edge_config = 0;
  edge_insensitive = mask;
  break;
 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&bank->gc.bgpio_lock, flags);

 iedge_config = bank->gc.read_reg(priv->reg_base +
   GIO_EC(bank->id)) & ~mask;
 iedge_insensitive = bank->gc.read_reg(priv->reg_base +
   GIO_EI(bank->id)) & ~mask;
 ilevel = bank->gc.read_reg(priv->reg_base +
   GIO_LEVEL(bank->id)) & ~mask;

 bank->gc.write_reg(priv->reg_base + GIO_EC(bank->id),
   iedge_config | edge_config);
 bank->gc.write_reg(priv->reg_base + GIO_EI(bank->id),
   iedge_insensitive | edge_insensitive);
 bank->gc.write_reg(priv->reg_base + GIO_LEVEL(bank->id),
   ilevel | level);

 spin_unlock_irqrestore(&bank->gc.bgpio_lock, flags);
 return 0;
}
