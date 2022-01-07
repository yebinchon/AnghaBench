
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_adc {int clk; int sclk; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ needs_sclk; } ;


 int clk_unprepare (int ) ;

__attribute__((used)) static void exynos_adc_unprepare_clk(struct exynos_adc *info)
{
 if (info->data->needs_sclk)
  clk_unprepare(info->sclk);
 clk_unprepare(info->clk);
}
