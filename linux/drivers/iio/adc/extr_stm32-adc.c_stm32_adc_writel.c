
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stm32_adc {scalar_t__ offset; TYPE_1__* common; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void stm32_adc_writel(struct stm32_adc *adc, u32 reg, u32 val)
{
 writel_relaxed(val, adc->common->base + adc->offset + reg);
}
