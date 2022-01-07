
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long timeout; } ;
struct nmk_i2c_dev {TYPE_1__* adev; scalar_t__ virtbase; TYPE_2__ adap; } ;
struct TYPE_3__ {int dev; } ;


 int ETIMEDOUT ;
 scalar_t__ I2C_CR ;
 int I2C_CR_FRX ;
 int I2C_CR_FTX ;
 int LOOP_ATTEMPTS ;
 int dev_err (int *,char*,int) ;
 unsigned long jiffies ;
 int readl (scalar_t__) ;
 int time_after (unsigned long,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int flush_i2c_fifo(struct nmk_i2c_dev *dev)
{

 int i;
 unsigned long timeout;
 writel((I2C_CR_FTX | I2C_CR_FRX), dev->virtbase + I2C_CR);

 for (i = 0; i < 10; i++) {
  timeout = jiffies + dev->adap.timeout;

  while (!time_after(jiffies, timeout)) {
   if ((readl(dev->virtbase + I2C_CR) &
    (I2C_CR_FTX | I2C_CR_FRX)) == 0)
     return 0;
  }
 }

 dev_err(&dev->adev->dev,
  "flushing operation timed out giving up after %d attempts",
  10);

 return -ETIMEDOUT;
}
