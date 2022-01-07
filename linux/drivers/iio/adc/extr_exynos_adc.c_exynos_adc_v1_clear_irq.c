
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_adc {int regs; } ;


 int ADC_V1_INTCLR (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void exynos_adc_v1_clear_irq(struct exynos_adc *info)
{
 writel(1, ADC_V1_INTCLR(info->regs));
}
