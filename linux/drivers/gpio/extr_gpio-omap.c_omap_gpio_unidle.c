
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int fallingdetect; int risingdetect; } ;
struct TYPE_4__ {struct device* parent; } ;
struct gpio_bank {int (* get_context_loss_count ) (struct device*) ;int context_loss_count; int saved_datain; int enabled_non_wakeup_gpios; TYPE_3__* regs; scalar_t__ base; TYPE_2__ context; scalar_t__ loses_context; int context_valid; TYPE_1__ chip; } ;
struct device {int dummy; } ;
struct TYPE_6__ {scalar_t__ leveldetect1; scalar_t__ leveldetect0; scalar_t__ irqstatus_raw0; scalar_t__ datain; scalar_t__ risingdetect; scalar_t__ fallingdetect; } ;


 int omap_gpio_dbck_enable (struct gpio_bank*) ;
 int omap_gpio_init_context (struct gpio_bank*) ;
 int omap_gpio_restore_context (struct gpio_bank*) ;
 int readl_relaxed (scalar_t__) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void omap_gpio_unidle(struct gpio_bank *bank)
{
 struct device *dev = bank->chip.parent;
 u32 l = 0, gen, gen0, gen1;
 int c;






 if (bank->loses_context && !bank->context_valid) {
  omap_gpio_init_context(bank);

  if (bank->get_context_loss_count)
   bank->context_loss_count =
    bank->get_context_loss_count(dev);
 }

 omap_gpio_dbck_enable(bank);

 if (bank->loses_context) {
  if (!bank->get_context_loss_count) {
   omap_gpio_restore_context(bank);
  } else {
   c = bank->get_context_loss_count(dev);
   if (c != bank->context_loss_count) {
    omap_gpio_restore_context(bank);
   } else {
    return;
   }
  }
 } else {

  writel_relaxed(bank->context.fallingdetect,
          bank->base + bank->regs->fallingdetect);
  writel_relaxed(bank->context.risingdetect,
          bank->base + bank->regs->risingdetect);
 }

 l = readl_relaxed(bank->base + bank->regs->datain);







 l ^= bank->saved_datain;
 l &= bank->enabled_non_wakeup_gpios;





 gen0 = l & bank->context.fallingdetect;
 gen0 &= bank->saved_datain;

 gen1 = l & bank->context.risingdetect;
 gen1 &= ~(bank->saved_datain);


 gen = l & (~(bank->context.fallingdetect) &
      ~(bank->context.risingdetect));

 gen |= gen0 | gen1;

 if (gen) {
  u32 old0, old1;

  old0 = readl_relaxed(bank->base + bank->regs->leveldetect0);
  old1 = readl_relaxed(bank->base + bank->regs->leveldetect1);

  if (!bank->regs->irqstatus_raw0) {
   writel_relaxed(old0 | gen, bank->base +
      bank->regs->leveldetect0);
   writel_relaxed(old1 | gen, bank->base +
      bank->regs->leveldetect1);
  }

  if (bank->regs->irqstatus_raw0) {
   writel_relaxed(old0 | l, bank->base +
      bank->regs->leveldetect0);
   writel_relaxed(old1 | l, bank->base +
      bank->regs->leveldetect1);
  }
  writel_relaxed(old0, bank->base + bank->regs->leveldetect0);
  writel_relaxed(old1, bank->base + bank->regs->leveldetect1);
 }
}
