
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct stu300_dev {int speed; scalar_t__ virtbase; TYPE_1__* pdev; } ;
struct TYPE_5__ {unsigned long rate; int setting; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 scalar_t__ I2C_CCR ;
 int I2C_CCR_CC_MASK ;
 int I2C_CCR_FMSM ;
 scalar_t__ I2C_ECCR ;
 scalar_t__ I2C_OAR2 ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*,...) ;
 TYPE_2__* stu300_clktable ;
 int stu300_wr8 (int,scalar_t__) ;

__attribute__((used)) static int stu300_set_clk(struct stu300_dev *dev, unsigned long clkrate)
{

 u32 val;
 int i = 0;


 while (i < ARRAY_SIZE(stu300_clktable) - 1 &&
        stu300_clktable[i].rate < clkrate)
  i++;

 if (stu300_clktable[i].setting == 0xFFU) {
  dev_err(&dev->pdev->dev, "too %s clock rate requested "
   "(%lu Hz).\n", i ? "high" : "low", clkrate);
  return -EINVAL;
 }

 stu300_wr8(stu300_clktable[i].setting,
     dev->virtbase + I2C_OAR2);

 dev_dbg(&dev->pdev->dev, "Clock rate %lu Hz, I2C bus speed %d Hz "
  "virtbase %p\n", clkrate, dev->speed, dev->virtbase);

 if (dev->speed > 100000)

  val = ((clkrate/dev->speed) - 9)/3 + 1;
 else

  val = ((clkrate/dev->speed) - 7)/2 + 1;


 if (val < 0x002) {
  dev_err(&dev->pdev->dev, "too low clock rate (%lu Hz).\n",
   clkrate);
  return -EINVAL;
 }


 if (val & 0xFFFFF000U) {
  dev_err(&dev->pdev->dev, "too high clock rate (%lu Hz).\n",
   clkrate);
  return -EINVAL;
 }

 if (dev->speed > 100000) {

  stu300_wr8((val & I2C_CCR_CC_MASK) | I2C_CCR_FMSM,
      dev->virtbase + I2C_CCR);
  dev_dbg(&dev->pdev->dev, "set clock divider to 0x%08x, "
   "Fast Mode I2C\n", val);
 } else {

  stu300_wr8((val & I2C_CCR_CC_MASK),
      dev->virtbase + I2C_CCR);
  dev_dbg(&dev->pdev->dev, "set clock divider to "
   "0x%08x, Standard Mode I2C\n", val);
 }


 stu300_wr8(((val >> 7) & 0x1F),
     dev->virtbase + I2C_ECCR);

 return 0;
}
