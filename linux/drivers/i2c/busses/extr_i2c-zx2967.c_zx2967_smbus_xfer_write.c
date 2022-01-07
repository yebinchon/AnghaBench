
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_i2c {int error; int complete; } ;


 int ETIMEDOUT ;
 int I2C_START ;
 int I2C_TIMEOUT ;
 int REG_CMD ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int zx2967_i2c_readl (struct zx2967_i2c*,int ) ;
 int zx2967_i2c_writel (struct zx2967_i2c*,int ,int ) ;

__attribute__((used)) static int zx2967_smbus_xfer_write(struct zx2967_i2c *i2c)
{
 unsigned long time_left;
 u32 val;

 reinit_completion(&i2c->complete);
 val = zx2967_i2c_readl(i2c, REG_CMD);
 val |= I2C_START;
 zx2967_i2c_writel(i2c, val, REG_CMD);

 time_left = wait_for_completion_timeout(&i2c->complete,
      I2C_TIMEOUT);
 if (time_left == 0)
  return -ETIMEDOUT;

 if (i2c->error)
  return i2c->error;

 return 0;
}
