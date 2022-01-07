
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int REG_INT_MSK_LINE_B ;
 int REG_INT_MSK_STS_B ;
 int twl6030_interrupt_unmask (int ,int ) ;

__attribute__((used)) static int twl6030_gpadc_enable_irq(u8 mask)
{
 int ret;

 ret = twl6030_interrupt_unmask(mask, REG_INT_MSK_LINE_B);
 if (ret < 0)
  return ret;

 ret = twl6030_interrupt_unmask(mask, REG_INT_MSK_STS_B);

 return ret;
}
