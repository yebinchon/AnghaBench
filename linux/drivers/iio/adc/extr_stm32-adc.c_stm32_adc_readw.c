
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct stm32_adc {scalar_t__ offset; TYPE_1__* common; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int readw_relaxed (scalar_t__) ;

__attribute__((used)) static u16 stm32_adc_readw(struct stm32_adc *adc, u32 reg)
{
 return readw_relaxed(adc->common->base + adc->offset + reg);
}
