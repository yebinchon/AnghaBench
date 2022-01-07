
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_adc {scalar_t__ base; } ;


 scalar_t__ LRADC_DELAY (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxs_lradc_adc_hw_stop(struct mxs_lradc_adc *adc)
{
 writel(0, adc->base + LRADC_DELAY(0));
}
