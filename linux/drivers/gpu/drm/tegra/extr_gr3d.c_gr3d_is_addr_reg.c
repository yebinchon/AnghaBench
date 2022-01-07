
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gr3d {int addr_regs; } ;
struct device {int dummy; } ;


 int GR3D_NUM_REGS ;


 struct gr3d* dev_get_drvdata (struct device*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int gr3d_is_addr_reg(struct device *dev, u32 class, u32 offset)
{
 struct gr3d *gr3d = dev_get_drvdata(dev);

 switch (class) {
 case 128:
  if (offset == 0x2b)
   return 1;

  break;

 case 129:
  if (offset >= GR3D_NUM_REGS)
   break;

  if (test_bit(offset, gr3d->addr_regs))
   return 1;

  break;
 }

 return 0;
}
