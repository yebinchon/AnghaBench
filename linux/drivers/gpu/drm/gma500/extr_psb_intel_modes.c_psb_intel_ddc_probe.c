
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

bool psb_intel_ddc_probe(struct i2c_adapter *adapter)
{
 u8 out_buf[] = { 0x0, 0x0 };
 u8 buf[2];
 int ret;
 struct i2c_msg msgs[] = {
  {
   .addr = 0x50,
   .flags = 0,
   .len = 1,
   .buf = out_buf,
   },
  {
   .addr = 0x50,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = buf,
   }
 };

 ret = i2c_transfer(adapter, msgs, 2);
 if (ret == 2)
  return 1;

 return 0;
}
