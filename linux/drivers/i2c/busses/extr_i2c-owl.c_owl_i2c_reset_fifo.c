
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct owl_i2c_dev {TYPE_1__ adap; scalar_t__ base; } ;


 int ETIMEDOUT ;
 unsigned int OWL_I2C_FIFOCTL_RFR ;
 unsigned int OWL_I2C_FIFOCTL_TFR ;
 unsigned int OWL_I2C_MAX_RETRIES ;
 scalar_t__ OWL_I2C_REG_FIFOCTL ;
 int dev_err (int *,char*) ;
 int owl_i2c_update_reg (scalar_t__,unsigned int,int) ;
 unsigned int readl (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int owl_i2c_reset_fifo(struct owl_i2c_dev *i2c_dev)
{
 unsigned int val, timeout = 0;


 owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_FIFOCTL,
      OWL_I2C_FIFOCTL_RFR | OWL_I2C_FIFOCTL_TFR,
      1);


 do {
  val = readl(i2c_dev->base + OWL_I2C_REG_FIFOCTL);
  if (!(val & (OWL_I2C_FIFOCTL_RFR | OWL_I2C_FIFOCTL_TFR)))
   break;
  usleep_range(500, 1000);
 } while (timeout++ < OWL_I2C_MAX_RETRIES);

 if (timeout > OWL_I2C_MAX_RETRIES) {
  dev_err(&i2c_dev->adap.dev, "FIFO reset timeout\n");
  return -ETIMEDOUT;
 }

 return 0;
}
