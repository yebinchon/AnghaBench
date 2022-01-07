
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int EINVAL ;


 scalar_t__ PIC32_CLR (int ) ;
 scalar_t__ PIC32_SET (int ) ;
 int REG_INTCON ;
 scalar_t__ evic_base ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pic32_set_ext_polarity(int bit, u32 type)
{




 switch (type) {
 case 128:
  writel(BIT(bit), evic_base + PIC32_SET(REG_INTCON));
  break;
 case 129:
  writel(BIT(bit), evic_base + PIC32_CLR(REG_INTCON));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
