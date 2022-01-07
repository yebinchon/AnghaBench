
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_adc {int regs; } ;


 int ADC_CON_EN_START ;
 int ADC_V2_CON1 (int ) ;
 int ADC_V2_CON2 (int ) ;
 int ADC_V2_CON2_ACH_MASK ;
 int ADC_V2_CON2_ACH_SEL (unsigned long) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void exynos_adc_v2_start_conv(struct exynos_adc *info,
         unsigned long addr)
{
 u32 con1, con2;

 con2 = readl(ADC_V2_CON2(info->regs));
 con2 &= ~ADC_V2_CON2_ACH_MASK;
 con2 |= ADC_V2_CON2_ACH_SEL(addr);
 writel(con2, ADC_V2_CON2(info->regs));

 con1 = readl(ADC_V2_CON1(info->regs));
 writel(con1 | ADC_CON_EN_START, ADC_V2_CON1(info->regs));
}
