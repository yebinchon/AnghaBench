
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ingenic_adc {int clk; int lock; scalar_t__ base; } ;


 scalar_t__ JZ_ADC_REG_CFG ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ingenic_adc_set_config(struct ingenic_adc *adc,
       uint32_t mask,
       uint32_t val)
{
 uint32_t cfg;

 clk_enable(adc->clk);
 mutex_lock(&adc->lock);

 cfg = readl(adc->base + JZ_ADC_REG_CFG) & ~mask;
 cfg |= val;
 writel(cfg, adc->base + JZ_ADC_REG_CFG);

 mutex_unlock(&adc->lock);
 clk_disable(adc->clk);
}
