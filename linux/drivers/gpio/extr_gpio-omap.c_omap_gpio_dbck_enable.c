
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_bank {int dbck_enabled; TYPE_1__* regs; scalar_t__ base; scalar_t__ dbck_enable_mask; int dbck; } ;
struct TYPE_2__ {scalar_t__ debounce_en; } ;


 int clk_enable (int ) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void omap_gpio_dbck_enable(struct gpio_bank *bank)
{
 if (bank->dbck_enable_mask && !bank->dbck_enabled) {
  clk_enable(bank->dbck);
  bank->dbck_enabled = 1;

  writel_relaxed(bank->dbck_enable_mask,
        bank->base + bank->regs->debounce_en);
 }
}
