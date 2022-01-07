
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_adc {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_adc_readl (struct stm32_adc*,int) ;
 int stm32_adc_writel (struct stm32_adc*,int,int) ;

__attribute__((used)) static void stm32_adc_clr_bits(struct stm32_adc *adc, u32 reg, u32 bits)
{
 unsigned long flags;

 spin_lock_irqsave(&adc->lock, flags);
 stm32_adc_writel(adc, reg, stm32_adc_readl(adc, reg) & ~bits);
 spin_unlock_irqrestore(&adc->lock, flags);
}
