
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl6405 {int config; int override_or; int override_and; int i2c; int i2c_addr; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;
 int EIO ;
 int ISL6405_EN1 ;
 int ISL6405_EN2 ;
 int ISL6405_VSEL1 ;
 int ISL6405_VSEL2 ;



 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int isl6405_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 struct isl6405 *isl6405 = (struct isl6405 *) fe->sec_priv;
 struct i2c_msg msg = { .addr = isl6405->i2c_addr, .flags = 0,
    .buf = &isl6405->config,
    .len = sizeof(isl6405->config) };

 if (isl6405->override_or & 0x80) {
  isl6405->config &= ~(ISL6405_VSEL2 | ISL6405_EN2);
  switch (voltage) {
  case 128:
   break;
  case 130:
   isl6405->config |= ISL6405_EN2;
   break;
  case 129:
   isl6405->config |= (ISL6405_EN2 | ISL6405_VSEL2);
   break;
  default:
   return -EINVAL;
  }
 } else {
  isl6405->config &= ~(ISL6405_VSEL1 | ISL6405_EN1);
  switch (voltage) {
  case 128:
   break;
  case 130:
   isl6405->config |= ISL6405_EN1;
   break;
  case 129:
   isl6405->config |= (ISL6405_EN1 | ISL6405_VSEL1);
   break;
  default:
   return -EINVAL;
  }
 }
 isl6405->config |= isl6405->override_or;
 isl6405->config &= isl6405->override_and;

 return (i2c_transfer(isl6405->i2c, &msg, 1) == 1) ? 0 : -EIO;
}
