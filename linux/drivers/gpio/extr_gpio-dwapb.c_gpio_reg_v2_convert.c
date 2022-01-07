
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



 unsigned int GPIO_INTMASK_V2 ;

 unsigned int GPIO_INTSTATUS_V2 ;

 unsigned int GPIO_INTTYPE_LEVEL_V2 ;

 unsigned int GPIO_INT_POLARITY_V2 ;

 unsigned int GPIO_PORTA_EOI_V2 ;

__attribute__((used)) static inline u32 gpio_reg_v2_convert(unsigned int offset)
{
 switch (offset) {
 case 132:
  return GPIO_INTMASK_V2;
 case 130:
  return GPIO_INTTYPE_LEVEL_V2;
 case 129:
  return GPIO_INT_POLARITY_V2;
 case 131:
  return GPIO_INTSTATUS_V2;
 case 128:
  return GPIO_PORTA_EOI_V2;
 }

 return offset;
}
