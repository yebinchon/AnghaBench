
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct exynos_adc {int delay; int regs; TYPE_1__* data; int pmu_map; } ;
struct TYPE_2__ {int phy_offset; scalar_t__ needs_adc_phy; } ;


 int ADC_V1_CON (int ) ;
 int ADC_V1_CON_PRSCEN ;
 int ADC_V1_CON_PRSCLV (int) ;
 int ADC_V1_CON_RES ;
 int ADC_V1_DLY (int ) ;
 int regmap_write (int ,int ,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void exynos_adc_v1_init_hw(struct exynos_adc *info)
{
 u32 con1;

 if (info->data->needs_adc_phy)
  regmap_write(info->pmu_map, info->data->phy_offset, 1);


 con1 = ADC_V1_CON_PRSCLV(49) | ADC_V1_CON_PRSCEN;


 con1 |= ADC_V1_CON_RES;
 writel(con1, ADC_V1_CON(info->regs));


 writel(info->delay, ADC_V1_DLY(info->regs));
}
