
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gr2d {int addr_regs; } ;
struct device {int dummy; } ;


 int GR2D_NUM_REGS ;



 struct gr2d* dev_get_drvdata (struct device*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int gr2d_is_addr_reg(struct device *dev, u32 class, u32 offset)
{
 struct gr2d *gr2d = dev_get_drvdata(dev);

 switch (class) {
 case 128:
  if (offset == 0x2b)
   return 1;

  break;

 case 130:
 case 129:
  if (offset >= GR2D_NUM_REGS)
   break;

  if (test_bit(offset, gr2d->addr_regs))
   return 1;

  break;
 }

 return 0;
}
