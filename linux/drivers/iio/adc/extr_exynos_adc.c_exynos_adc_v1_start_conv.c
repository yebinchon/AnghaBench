
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct exynos_adc {int regs; } ;


 unsigned long ADC_CON_EN_START ;
 int ADC_V1_CON (int ) ;
 int ADC_V1_MUX (int ) ;
 unsigned long readl (int ) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static void exynos_adc_v1_start_conv(struct exynos_adc *info,
         unsigned long addr)
{
 u32 con1;

 writel(addr, ADC_V1_MUX(info->regs));

 con1 = readl(ADC_V1_CON(info->regs));
 writel(con1 | ADC_CON_EN_START, ADC_V1_CON(info->regs));
}
