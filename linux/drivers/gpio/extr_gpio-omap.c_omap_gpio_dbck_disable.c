
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_bank {int dbck_enabled; int dbck; TYPE_1__* regs; scalar_t__ base; scalar_t__ dbck_enable_mask; } ;
struct TYPE_2__ {scalar_t__ debounce_en; } ;


 int clk_disable (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void omap_gpio_dbck_disable(struct gpio_bank *bank)
{
 if (bank->dbck_enable_mask && bank->dbck_enabled) {





  writel_relaxed(0, bank->base + bank->regs->debounce_en);

  clk_disable(bank->dbck);
  bank->dbck_enabled = 0;
 }
}
