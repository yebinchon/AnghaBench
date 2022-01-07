
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct exynos_adc {int regs; TYPE_1__* data; int pmu_map; } ;
struct TYPE_2__ {int phy_offset; scalar_t__ needs_adc_phy; } ;


 int ADC_V1_CON (int ) ;
 int ADC_V1_CON_STANDBY ;
 int readl (int ) ;
 int regmap_write (int ,int ,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void exynos_adc_v1_exit_hw(struct exynos_adc *info)
{
 u32 con;

 if (info->data->needs_adc_phy)
  regmap_write(info->pmu_map, info->data->phy_offset, 0);

 con = readl(ADC_V1_CON(info->regs));
 con |= ADC_V1_CON_STANDBY;
 writel(con, ADC_V1_CON(info->regs));
}
