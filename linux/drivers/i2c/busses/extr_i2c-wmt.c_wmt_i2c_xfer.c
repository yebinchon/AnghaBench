
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_RD ;
 int wmt_i2c_read (struct i2c_adapter*,struct i2c_msg*,int) ;
 int wmt_i2c_write (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int wmt_i2c_xfer(struct i2c_adapter *adap,
   struct i2c_msg msgs[],
   int num)
{
 struct i2c_msg *pmsg;
 int i, is_last;
 int ret = 0;

 for (i = 0; ret >= 0 && i < num; i++) {
  is_last = ((i + 1) == num);

  pmsg = &msgs[i];
  if (pmsg->flags & I2C_M_RD)
   ret = wmt_i2c_read(adap, pmsg, is_last);
  else
   ret = wmt_i2c_write(adap, pmsg, is_last);
 }

 return (ret < 0) ? ret : i;
}
