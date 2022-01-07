
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spear_adc_state {int current_clk; TYPE_1__* adc_base_spear6xx; int clk; } ;
struct TYPE_2__ {int clk; } ;


 int DIV_ROUND_UP (int,int) ;
 int SPEAR_ADC_CLK_HIGH (int) ;
 int SPEAR_ADC_CLK_LOW (int) ;
 int __raw_writel (int,int *) ;
 int clk_get_rate (int ) ;

__attribute__((used)) static void spear_adc_set_clk(struct spear_adc_state *st, u32 val)
{
 u32 clk_high, clk_low, count;
 u32 apb_clk = clk_get_rate(st->clk);

 count = DIV_ROUND_UP(apb_clk, val);
 clk_low = count / 2;
 clk_high = count - clk_low;
 st->current_clk = apb_clk / count;

 __raw_writel(SPEAR_ADC_CLK_LOW(clk_low) | SPEAR_ADC_CLK_HIGH(clk_high),
       &st->adc_base_spear6xx->clk);
}
