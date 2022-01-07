
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_i2c_dev {scalar_t__ base; } ;
struct i2c_adapter {int dev; } ;


 int ETIMEDOUT ;
 scalar_t__ OWL_I2C_REG_STAT ;
 int OWL_I2C_STAT_BBB ;
 unsigned long OWL_I2C_TIMEOUT ;
 int dev_err (int *,char*) ;
 struct owl_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 unsigned long jiffies ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int owl_i2c_check_bus_busy(struct i2c_adapter *adap)
{
 struct owl_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
 unsigned long timeout;


 timeout = jiffies + OWL_I2C_TIMEOUT;
 while (readl(i2c_dev->base + OWL_I2C_REG_STAT) & OWL_I2C_STAT_BBB) {
  if (time_after(jiffies, timeout)) {
   dev_err(&adap->dev, "Bus busy timeout\n");
   return -ETIMEDOUT;
  }
 }

 return 0;
}
