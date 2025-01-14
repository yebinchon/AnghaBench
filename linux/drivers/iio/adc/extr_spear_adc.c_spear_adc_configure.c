
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spear_adc_state {int sampling_freq; TYPE_1__* adc_base_spear6xx; } ;
struct TYPE_2__ {int clk; } ;


 int __raw_writel (int ,int *) ;
 int spear_adc_set_clk (struct spear_adc_state*,int ) ;
 int spear_adc_set_ctrl (struct spear_adc_state*,int,int ) ;
 int spear_adc_set_scanrate (struct spear_adc_state*,int ) ;
 int spear_adc_set_status (struct spear_adc_state*,int ) ;

__attribute__((used)) static int spear_adc_configure(struct spear_adc_state *st)
{
 int i;


 spear_adc_set_status(st, 0);
 __raw_writel(0, &st->adc_base_spear6xx->clk);
 for (i = 0; i < 8; i++)
  spear_adc_set_ctrl(st, i, 0);
 spear_adc_set_scanrate(st, 0);

 spear_adc_set_clk(st, st->sampling_freq);

 return 0;
}
