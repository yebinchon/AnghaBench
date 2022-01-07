
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_gc {int rising; int falling; int hlevel; int llevel; int lock; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 int GPIO_REG_FEDGE ;
 int GPIO_REG_HLVL ;
 int GPIO_REG_LLVL ;
 int GPIO_REG_REDGE ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mtk_gpio_r32 (struct mtk_gc*,int ) ;
 int mtk_gpio_w32 (struct mtk_gc*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_gc* to_mediatek_gpio (struct gpio_chip*) ;

__attribute__((used)) static void
mediatek_gpio_irq_unmask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct mtk_gc *rg = to_mediatek_gpio(gc);
 int pin = d->hwirq;
 unsigned long flags;
 u32 rise, fall, high, low;

 spin_lock_irqsave(&rg->lock, flags);
 rise = mtk_gpio_r32(rg, GPIO_REG_REDGE);
 fall = mtk_gpio_r32(rg, GPIO_REG_FEDGE);
 high = mtk_gpio_r32(rg, GPIO_REG_HLVL);
 low = mtk_gpio_r32(rg, GPIO_REG_LLVL);
 mtk_gpio_w32(rg, GPIO_REG_REDGE, rise | (BIT(pin) & rg->rising));
 mtk_gpio_w32(rg, GPIO_REG_FEDGE, fall | (BIT(pin) & rg->falling));
 mtk_gpio_w32(rg, GPIO_REG_HLVL, high | (BIT(pin) & rg->hlevel));
 mtk_gpio_w32(rg, GPIO_REG_LLVL, low | (BIT(pin) & rg->llevel));
 spin_unlock_irqrestore(&rg->lock, flags);
}
