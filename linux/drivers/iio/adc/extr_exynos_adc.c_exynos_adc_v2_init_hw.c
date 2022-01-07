
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct exynos_adc {int regs; TYPE_1__* data; int pmu_map; } ;
struct TYPE_2__ {int phy_offset; scalar_t__ needs_adc_phy; } ;


 int ADC_V2_CON1 (int ) ;
 int ADC_V2_CON1_SOFT_RESET ;
 int ADC_V2_CON2 (int ) ;
 int ADC_V2_CON2_C_TIME (int ) ;
 int ADC_V2_CON2_ESEL ;
 int ADC_V2_CON2_HIGHF ;
 int ADC_V2_CON2_OSEL ;
 int ADC_V2_INT_EN (int ) ;
 int regmap_write (int ,int ,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void exynos_adc_v2_init_hw(struct exynos_adc *info)
{
 u32 con1, con2;

 if (info->data->needs_adc_phy)
  regmap_write(info->pmu_map, info->data->phy_offset, 1);

 con1 = ADC_V2_CON1_SOFT_RESET;
 writel(con1, ADC_V2_CON1(info->regs));

 con2 = ADC_V2_CON2_OSEL | ADC_V2_CON2_ESEL |
  ADC_V2_CON2_HIGHF | ADC_V2_CON2_C_TIME(0);
 writel(con2, ADC_V2_CON2(info->regs));


 writel(1, ADC_V2_INT_EN(info->regs));
}
