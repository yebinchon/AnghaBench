
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_dev {scalar_t__ base; } ;


 int ETIMEDOUT ;
 int I2C_STATUS_BUS_ACTIVE ;
 scalar_t__ QUP_I2C_STATUS ;
 int jiffies ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (int,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int qup_i2c_bus_active(struct qup_i2c_dev *qup, int len)
{
 unsigned long timeout;
 u32 status;
 int ret = 0;

 timeout = jiffies + len * 4;
 for (;;) {
  status = readl(qup->base + QUP_I2C_STATUS);
  if (!(status & I2C_STATUS_BUS_ACTIVE))
   break;

  if (time_after(jiffies, timeout))
   ret = -ETIMEDOUT;

  usleep_range(len, len * 2);
 }

 return ret;
}
