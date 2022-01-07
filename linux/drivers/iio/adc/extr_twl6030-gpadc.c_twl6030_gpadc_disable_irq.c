
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int REG_INT_MSK_LINE_B ;
 int REG_INT_MSK_STS_B ;
 int twl6030_interrupt_mask (int ,int ) ;

__attribute__((used)) static void twl6030_gpadc_disable_irq(u8 mask)
{
 twl6030_interrupt_mask(mask, REG_INT_MSK_LINE_B);
 twl6030_interrupt_mask(mask, REG_INT_MSK_STS_B);
}
