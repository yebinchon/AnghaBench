
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {unsigned int debounce; void* debounce_en; } ;
struct gpio_bank {TYPE_2__ context; void* dbck_enable_mask; int dbck; TYPE_1__* regs; scalar_t__ base; int dbck_flag; } ;
struct TYPE_3__ {scalar_t__ debounce_en; scalar_t__ debounce; } ;


 void* BIT (unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int EINVAL ;
 int ENOTSUPP ;
 unsigned int OMAP4_GPIO_DEBOUNCINGTIME_MASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int omap_gpio_dbck_enable (struct gpio_bank*) ;
 void* omap_gpio_rmw (scalar_t__,void*,int) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int omap2_set_gpio_debounce(struct gpio_bank *bank, unsigned offset,
       unsigned debounce)
{
 u32 val;
 u32 l;
 bool enable = !!debounce;

 if (!bank->dbck_flag)
  return -ENOTSUPP;

 if (enable) {
  debounce = DIV_ROUND_UP(debounce, 31) - 1;
  if ((debounce & OMAP4_GPIO_DEBOUNCINGTIME_MASK) != debounce)
   return -EINVAL;
 }

 l = BIT(offset);

 clk_enable(bank->dbck);
 writel_relaxed(debounce, bank->base + bank->regs->debounce);

 val = omap_gpio_rmw(bank->base + bank->regs->debounce_en, l, enable);
 bank->dbck_enable_mask = val;

 clk_disable(bank->dbck);
 omap_gpio_dbck_enable(bank);
 if (bank->dbck_enable_mask) {
  bank->context.debounce = debounce;
  bank->context.debounce_en = val;
 }

 return 0;
}
