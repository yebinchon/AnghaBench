
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stm32_adc_regs {int mask; int shift; int reg; } ;
struct stm32_adc {int res; TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {struct stm32_adc_regs res; } ;


 int stm32_adc_readl (struct stm32_adc*,int ) ;
 int stm32_adc_writel (struct stm32_adc*,int ,int) ;

__attribute__((used)) static void stm32_adc_set_res(struct stm32_adc *adc)
{
 const struct stm32_adc_regs *res = &adc->cfg->regs->res;
 u32 val;

 val = stm32_adc_readl(adc, res->reg);
 val = (val & ~res->mask) | (adc->res << res->shift);
 stm32_adc_writel(adc, res->reg, val);
}
