
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_lradc_adc {scalar_t__ base; } ;


 scalar_t__ LRADC_CTRL2 ;
 scalar_t__ LRADC_DELAY (int ) ;
 int LRADC_DELAY_DELAY_OFFSET ;
 int LRADC_DELAY_TIMER_PER ;
 int LRADC_DELAY_TRIGGER_DELAYS_OFFSET ;
 int writel (int const,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_adc_hw_init(struct mxs_lradc_adc *adc)
{

 const u32 adc_cfg =
  (1 << (LRADC_DELAY_TRIGGER_DELAYS_OFFSET + 0)) |
  (LRADC_DELAY_TIMER_PER << LRADC_DELAY_DELAY_OFFSET);


 writel(adc_cfg, adc->base + LRADC_DELAY(0));






 writel(0, adc->base + LRADC_CTRL2);
}
