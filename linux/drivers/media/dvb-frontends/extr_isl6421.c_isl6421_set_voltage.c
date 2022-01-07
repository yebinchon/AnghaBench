
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct isl6421 {int config; int is_off; int override_or; int override_and; TYPE_1__* i2c; int i2c_addr; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int I2C_M_RD ;
 int ISL6421_DCL ;
 int ISL6421_EN1 ;
 int ISL6421_OLF1 ;
 int ISL6421_VSEL1 ;



 int dev_warn (int *,char*) ;
 int i2c_transfer (TYPE_1__*,struct i2c_msg*,int) ;
 int msleep (int) ;

__attribute__((used)) static int isl6421_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 int ret;
 u8 buf;
 bool is_off;
 struct isl6421 *isl6421 = (struct isl6421 *) fe->sec_priv;
 struct i2c_msg msg[2] = {
  {
    .addr = isl6421->i2c_addr,
    .flags = 0,
    .buf = &isl6421->config,
    .len = 1,
  }, {
    .addr = isl6421->i2c_addr,
    .flags = I2C_M_RD,
    .buf = &buf,
    .len = 1,
  }

 };

 isl6421->config &= ~(ISL6421_VSEL1 | ISL6421_EN1);

 switch(voltage) {
 case 128:
  is_off = 1;
  break;
 case 130:
  is_off = 0;
  isl6421->config |= ISL6421_EN1;
  break;
 case 129:
  is_off = 0;
  isl6421->config |= (ISL6421_EN1 | ISL6421_VSEL1);
  break;
 default:
  return -EINVAL;
 }






 if (isl6421->is_off && !is_off)
  isl6421->config |= ISL6421_DCL;

 isl6421->config |= isl6421->override_or;
 isl6421->config &= isl6421->override_and;

 ret = i2c_transfer(isl6421->i2c, msg, 2);
 if (ret < 0)
  return ret;
 if (ret != 2)
  return -EIO;


 isl6421->is_off = is_off;


 if (!is_off && (buf & ISL6421_OLF1))
  msleep(1000);


 if ((isl6421->config & ISL6421_DCL) &&
     !(isl6421->override_or & ISL6421_DCL)) {
  isl6421->config &= ~ISL6421_DCL;

  ret = i2c_transfer(isl6421->i2c, msg, 2);
  if (ret < 0)
   return ret;
  if (ret != 2)
   return -EIO;
 }


 if (!is_off && (buf & ISL6421_OLF1)) {
  isl6421->config &= ~(ISL6421_VSEL1 | ISL6421_EN1);
  ret = i2c_transfer(isl6421->i2c, msg, 1);
  if (ret < 0)
   return ret;
  if (ret != 1)
   return -EIO;
  isl6421->is_off = 1;

  dev_warn(&isl6421->i2c->dev,
    "Overload current detected. disabling LNBf power\n");
  return -EINVAL;
 }

 return 0;
}
